# lint.ps1
#
# PURPOSE:
#   Runs the lint checks and reports failures. Exits 1 on error.
#   Used by CI/CD as the merge gate (-All) and by the lint-fix agent during pre-PR cleanup.
#
#   To auto-fix formatting issues, run fix.ps1 instead.
#
# USAGE:
#   pwsh ./lint.ps1 -Help                     Print the usage text and exit 0
#   pwsh ./lint.ps1 -All                      All checks (CI merge gate)
#   pwsh ./lint.ps1 -Changed [-Base <ref>]    Only the checks whose inputs changed since <ref>
#                                             (default origin/main, else main) plus uncommitted changes
#   pwsh ./lint.ps1 -Check lintmark,textlint  Only the named checks, in full; combine with -Changed to
#                                             limit them to changed inputs
#   Add -DryRun to any scope to print which checks would run without running them.
#   With no arguments the usage text is printed and the script exits 1 (a scope must be chosen).
#
# SHARED MODULE:
#   This repository distributes scripts/ProjectScripts.psm1 as part of its product (src/scripts/), so
#   this script imports it from there, which also exercises the module that downstream repositories get.
#
# EXTENSION POINTS:
#   Search for "[PROJECT-SPECIFIC]" comments to find the designated locations
#   for adding project-specific lint checks.
#
# MODIFICATION POLICY:
#   Only modify this file to add project-specific operations at the designated
#   [PROJECT-SPECIFIC] extension points, or to update tool versions as needed.
#   To add a check, add it to the $checks table (its name becomes a valid -Check value and
#   appears in the usage text), then add its input filter and its run step at the
#   [PROJECT-SPECIFIC] points. The reusable scoping logic lives in the shared module, which is
#   synchronized verbatim across repositories and must not be edited here.
#   With no arguments the script prints the usage text and exits 1; -All must still run every
#   check (CI relies on that). Never remove or weaken a check to make it pass.

param(
    # Run every check (what CI runs).
    [switch]$All,

    # Run only the checks whose inputs changed.
    [switch]$Changed,

    # Git reference to compare against for -Changed (default: origin/main, else main).
    [string]$Base,

    # Run only the named checks (see the usage text for the valid names).
    [string[]]$Check,

    # Print which checks would run and exit without running them.
    [switch]$DryRun,

    # Print the usage text and exit 0.
    [switch]$Help
)

Import-Module (Join-Path $PSScriptRoot 'src/scripts/ProjectScripts.psm1') -Force

# ==============================================================================
# CHECK TABLE
# Every check in run order: its -Check name, the title shown in progress output, and the
# reason shown when -Changed skips it. [PROJECT-SPECIFIC] Add repository-specific checks here.
# ==============================================================================

$checks = [ordered]@{
    yamllint = @{ Title = 'YAML';     Skip = 'no YAML files changed' }
    textlint = @{ Title = 'spelling'; Skip = 'no spell-checked files changed' }
    lintmark = @{ Title = 'markdown'; Skip = 'no Markdown files changed' }
}

# ==============================================================================
# USAGE AND SCOPE VALIDATION
# ==============================================================================

function Show-Usage {
    Write-ScriptUsage -Script 'lint.ps1' -IterateWith '-Changed (or -Check)' `
        -Purpose 'run the lint checks (the CI merge gate); exits 1 if any check fails.' `
        -Options ([ordered]@{
            '-All'           = 'Every check (what CI runs); cannot be combined with another scope.'
            '-Changed'       = 'Only the checks whose inputs changed since the base, plus uncommitted files.'
            '-Base <ref>'    = 'Base reference for -Changed (default origin/main, else main).'
            '-Check <names>' = 'Only the named checks, in full; with -Changed, limited to changed inputs.'
            '-DryRun'        = 'Print which checks would run or be skipped, then exit 0 without running anything.'
            '-Help'          = 'Print this text and exit 0.'
        }) `
        -ChecksLabel 'Checks' -Checks @($checks.Keys) `
        -Examples @('-Changed', '-Check lintmark,textlint', '-Check lintmark -Changed -DryRun', '-All')
}

if ($Help) { Show-Usage; exit 0 }

$scopeProblems = Test-ScopeArguments -Base $Base -Scopes ([ordered]@{
        All     = $All.IsPresent
        Changed = $Changed.IsPresent
        Check   = [bool]$Check
    })
if ($scopeProblems.Count -gt 0) {
    $scopeProblems | ForEach-Object { Write-Host "Error: $_" }
    Write-Host ""
    Show-Usage
    exit 1
}

$wanted = @($checks.Keys)
if ($Check) {
    $wanted = Resolve-NameList -Names $Check -Valid @($checks.Keys) -Label 'check'
    if ($null -eq $wanted) { exit 1 }
}

# ==============================================================================
# CHECK SELECTION
# A check runs when it is wanted (-All, or named by -Check) and, with -Changed, when a file
# it reads changed. When the changed files cannot be determined, every wanted check runs.
# ==============================================================================

$inputsChanged = @{}
foreach ($name in $checks.Keys) { $inputsChanged[$name] = $true }

if ($Changed) {
    $files = Get-ChangedFiles -Base $Base
    if ($null -eq $files) {
        Write-Host "Running all selected checks: the changed files could not be determined."
    } else {
        Write-Host "Changed files: $($files.Count)"

        # A tool manifest change can change any dotnet tool, so it runs them all
        $toolManifest = Test-AnyMatch $files '^\.config/dotnet-tools\.json$'

        # yamllint: YAML files (including .yamllint.yaml) and its Python requirements
        $inputsChanged.yamllint = Test-AnyMatch $files '\.ya?ml$|^pip-requirements\.txt$'

        # TextLint: the file types in the 'files' setting of .textlint.yaml (and that YAML file itself)
        $inputsChanged.textlint = $toolManifest -or (Test-AnyMatch $files '\.(md|yaml|yml|json|cs|cpp|hpp|h|txt)$')

        # LintMark: Markdown files, .lintmark.yaml, and .editorconfig (LintMark reads both)
        $inputsChanged.lintmark = $toolManifest -or (Test-AnyMatch $files '\.md$|(^|/)\.lintmark\.yaml$|(^|/)\.editorconfig$')

        # [PROJECT-SPECIFIC] Add input filters for repository-specific checks here.
    }
}

$run = @{}
$skipReason = @{}
foreach ($name in $checks.Keys) {
    $run[$name] = ($name -in $wanted) -and $inputsChanged[$name]
    if ($name -notin $wanted) { $skipReason[$name] = 'not selected by -Check' }
    else { $skipReason[$name] = $checks[$name].Skip }
}

function Write-Skipped {
    param([string]$Name)
    Write-Host "Linting: $($checks[$Name].Title)... skipped ($($skipReason[$Name]))"
}

if ($DryRun) {
    foreach ($name in $checks.Keys) {
        Write-Host ("  {0,-12} {1}" -f $name, ($run[$name] ? 'run' : "skip ($($skipReason[$name]))"))
    }
    Write-Host "Dry run: no check was run."
    exit 0
}

# ==============================================================================
# LINT CHECKS
# Runs the selected lint checks. Exits 1 if any check fails.
# ==============================================================================

$lintError = $false

# --- PYTHON SECTION ---
# Sets up a virtual environment and runs yamllint.
$skipPython = $true
if ($run.yamllint) {
    Write-Host "Linting: YAML..."
    $skipPython = -not (Initialize-PythonVenv)
    if ($skipPython) { $lintError = $true }

    if (-not $skipPython) {
        yamllint .
        if ($LASTEXITCODE -ne 0) { $lintError = $true }
        deactivate
    }
} else {
    Write-Skipped 'yamllint'
}

# [PROJECT-SPECIFIC] Add additional Python-based lint checks here.
# Example:
#   if (-not $skipPython) {
#       flake8 src/
#       if ($LASTEXITCODE -ne 0) { $lintError = $true }
#   }

# --- DOTNET TOOLS RESTORE ---
# Restores the local dotnet tools; required by TextLint and LintMark.
$skipDotnetTools = $true
if ($run.textlint -or $run.lintmark) {
    $skipDotnetTools = $false
    dotnet tool restore > $null
    if ($LASTEXITCODE -ne 0) { $lintError = $true; $skipDotnetTools = $true }
}

# --- SPELLING SECTION ---
# Runs TextLint using the files configured in .textlint.yaml.
if ($run.textlint) {
    Write-Host "Linting: spelling..."
    if (-not $skipDotnetTools) {
        dotnet textlint
        if ($LASTEXITCODE -ne 0) { $lintError = $true }
    }
} else {
    Write-Skipped 'textlint'
}

# --- MARKDOWN SECTION ---
# Runs LintMark using the settings in .lintmark.yaml.
if ($run.lintmark) {
    Write-Host "Linting: markdown..."
    if (-not $skipDotnetTools) {
        dotnet lintmark
        if ($LASTEXITCODE -ne 0) { $lintError = $true }
    }
} else {
    Write-Skipped 'lintmark'
}

# [PROJECT-SPECIFIC] Add additional dotnet tool-based lint checks here.
# Example (a tool from .config/dotnet-tools.json):
#   if (-not $skipDotnetTools) {
#       dotnet mytool
#       if ($LASTEXITCODE -ne 0) { $lintError = $true }
#   }

exit ($lintError ? 1 : 0)
