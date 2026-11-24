# Project Structure

```text
├── docs/
│   ├── build_notes/
│   ├── template/
│   └── user_guide/
└── src/
    ├── AGENTS.md
    ├── .github/
    │   ├── agents/
    │   └── standards/
    └── scripts/
```

# Repository Purpose

This repository manages the DEMA shared agent definitions and coding standards
distributed to other repositories. The files in `src/` are the **product** —
they are packaged into a release zip for downstream consumption.

- **`src/AGENTS.md`** - distributable top-level agent instructions
- **`src/.github/agents/`** - distributable specialized agent prompts
- **`src/.github/standards/`** - distributable coding and documentation standards
- **`src/scripts/ProjectScripts.psm1`** - distributable shared module behind `build.ps1`, `lint.ps1`, and
  `fix.ps1` (extracted to `scripts/ProjectScripts.psm1` downstream; keep it byte-identical to the copy in the
  other DEMA repositories)

# Key Configuration Files

- **`.config/dotnet-tools.json`** - Local tool manifest (buildmark, versionmark, pandoc, weasyprint, textlint, lintmark)
- **`.textlint.yaml`** - Spell-check configuration and technical term dictionary (TextLint)
- **`.lintmark.yaml`** - Markdown formatting rules (LintMark)
- **`fix.ps1`** - Applies the auto-fixers. A fixer run always exits 0. Requires a scope (`-All`, `-Changed`,
  or `-Check`); see `pwsh ./fix.ps1 -Help`.
- **`lint.ps1`** - Runs the lint checks (`-All` is the CI merge gate). Exits 1 on failure or when no scope is
  given; see `pwsh ./lint.ps1 -Help`.

Both scripts import the shared module from `src/scripts/ProjectScripts.psm1`, so this repository uses the
product it distributes. See `src/.github/standards/project-scripts.md` for the contract.

# CI/CD Workflows

- **`.github/workflows/build.yaml`** - Reusable workflow: lint + build docs
- **`.github/workflows/build-on-push.yaml`** - Triggers on push/PR, calls build.yaml
- **`.github/workflows/release.yaml`** - Manual dispatch: build, zip `src/`, create GitHub release

# Authoring Agent Files

Agent prompt files live in `src/.github/agents/` with the naming convention
`{name}.agent.md`. The top-level instructions shared across all agents live
in `src/AGENTS.md`.

Standards documents live in `src/.github/standards/` and are loaded selectively
by agents based on the type of work being performed. The loading matrix is
defined in `src/AGENTS.md`.

# Documentation

- **`docs/build_notes/`** - Build notes source (introduction.md, title.txt, definition.yaml).
  Generated content is written to `docs/build_notes/generated/` at CI time by BuildMark.
- **`docs/user_guide/`** - User guide source (introduction.md, title.txt, definition.yaml).
- **`docs/template/`** - Shared Pandoc HTML template used by all document sections.

# Formatting (After Making Changes)

After making changes, run the auto-fix pass (a scope is required; no arguments prints usage and exits 1):

```pwsh
pwsh ./fix.ps1 -Changed   # during development: only the fixers for the changed file types
pwsh ./fix.ps1 -All       # everything; run before the pull request
```

Before the pull request, run `pwsh ./lint.ps1 -All` (what CI runs). While iterating, `pwsh ./lint.ps1 -Changed`
runs only the checks whose inputs changed.
