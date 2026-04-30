# fix.ps1
#
# PURPOSE:
#   Applies all available auto-fixers with progress output. Always exits 0.
#   Run this after making changes to automatically handle formatting
#   so agents and developers do not need to respond to lint output.
#   Handles: markdownlint.
#
# EXTENSION POINTS:
#   Search for "[PROJECT-SPECIFIC]" comments to find the designated locations
#   for adding project-specific auto-fix operations.
#
# MODIFICATION POLICY:
#   Only modify this file to add project-specific operations at the designated
#   [PROJECT-SPECIFIC] extension points, or to update tool versions as needed.

# ==============================================================================
# AUTO-FIX
# Applies all auto-fixers with progress output. Never fails — applies what it can and
# exits 0 so agents do not react to any output as a problem to solve.
# ==============================================================================

# --- Markdown Auto-Fix ---
Write-Host "Fixing: markdown..."
$env:PUPPETEER_SKIP_DOWNLOAD = "true"
npm install --silent 2>$null
if ($LASTEXITCODE -eq 0) {
    npx markdownlint-cli2 --fix "**/*.md" 2>$null
}

# [PROJECT-SPECIFIC] Add additional auto-fixers here.
# Example (Prettier for TypeScript/JSON):
#   npx prettier --write "src/**/*.{ts,json}" 2>$null

Write-Host "Auto-fix complete."
exit 0
