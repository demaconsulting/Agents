# Project Structure

```text
├── docs/
│   ├── build_notes/
│   ├── template/
│   └── user_guide/
└── src/
    ├── AGENTS.md
    └── .github/
        ├── agents/
        └── standards/
```

# Repository Purpose

This repository manages the DEMA shared agent definitions and coding standards
distributed to other repositories. The files in `src/` are the **product** —
they are packaged into a release zip for downstream consumption.

- **`src/AGENTS.md`** — distributable top-level agent instructions
- **`src/.github/agents/`** — distributable specialized agent prompts
- **`src/.github/standards/`** — distributable coding and documentation standards

# Key Configuration Files

- **`package.json`** — Node.js dependencies (cspell, markdownlint-cli2)
- **`.config/dotnet-tools.json`** — Local tool manifest (buildmark, versionmark, pandoc, weasyprint)
- **`.cspell.yaml`** — Spell-check configuration and technical term dictionary
- **`.markdownlint-cli2.yaml`** — Markdown formatting rules
- **`fix.ps1`** — Applies all auto-fixers silently. Always exits 0.
- **`lint.ps1`** — Runs all lint checks. Exits 1 on failure.

# CI/CD Workflows

- **`.github/workflows/build.yaml`** — Reusable workflow: lint + build docs
- **`.github/workflows/build-on-push.yaml`** — Triggers on push/PR, calls build.yaml
- **`.github/workflows/release.yaml`** — Manual dispatch: build, zip `src/`, create GitHub release

# Authoring Agent Files

Agent prompt files live in `src/.github/agents/` with the naming convention
`{name}.agent.md`. The top-level instructions shared across all agents live
in `src/AGENTS.md`.

Standards documents live in `src/.github/standards/` and are loaded selectively
by agents based on the type of work being performed. The loading matrix is
defined in `src/AGENTS.md`.

# Documentation

- **`docs/build_notes/`** — Build notes source (introduction.md, title.txt, definition.yaml).
  Generated content is written to `docs/build_notes/generated/` at CI time by BuildMark.
- **`docs/user_guide/`** — User guide source (introduction.md, title.txt, definition.yaml).
- **`docs/template/`** — Shared Pandoc HTML template used by all document sections.

# Formatting (After Making Changes)

After making changes, run the auto-fix pass:

```pwsh
pwsh ./fix.ps1
```
