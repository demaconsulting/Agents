# Agents

This repository contains the shared agent definitions and coding standards used
across DEMA Consulting repositories.

## Overview

Agents are AI assistant configurations that guide GitHub Copilot and other AI tools
when working in a repository. This repository provides:

- **`AGENTS.md`** — top-level instructions loaded by every agent, covering standards
  application, delegation, reporting, and scope discipline
- **`.github/agents/`** — specialized agent prompts for specific workflows
- **`.github/standards/`** — detailed coding and documentation standards referenced
  by agents

## Commonly Used Agents

### `software-architect`

An interactive interviewing agent that helps you design software architecture
collaboratively. Invoke it when starting a new project or adding a major component.

The agent asks one question at a time, covering scope, technology, functionality,
quality attributes, and future plans. After the interview it produces a standalone
`architecture.md` document in the current working directory, ready to attach to a
work item or issue ticket.

**When to use:** Beginning a new project, designing a new system or subsystem,
capturing architectural decisions before implementation begins.

**Invoke with:** `@software-architect` — then answer its questions.

### `implementation`

An orchestrator agent that manages complex feature development through a formal
state machine: **PLANNING → DEVELOPMENT → QUALITY → REPORT**. It automatically
calls the `developer` and `quality` sub-agents and retries up to three times if
quality gates fail.

**When to use:** Complex or multi-step features, bug fixes that require systematic
investigation, any work where you want automatic quality validation built in.

**Invoke with:** `@implementation <description of work to do>`

**Output:** A saved report at `.agent-logs/implementation-<subject>-<id>.md`
summarizing the planning, development, and quality results.

### `formal-review`

An agent for running structured formal reviews against a defined review-set. It
downloads the standard review checklist, elaborates the files in the review-set,
and produces a populated review report saved to `.agent-logs/reviews/`.

**When to use:** Performing a formal compliance review, auditing a set of files
against the review checklist, verifying a release candidate.

**Invoke with:** `@formal-review <review-set-name>`

**Output:** A populated review report at
`.agent-logs/reviews/review-report-<review-set>.md`.

## Other Available Agents

| Agent | Purpose |
| ----- | ------- |
| `developer` | General-purpose development — applies the right standards for the detected languages and file types |
| `quality` | Grades completed work against project standards and Continuous Compliance practices |
| `lint-fix` | Pre-PR sweep — loops `pwsh ./lint.ps1` and fixes all issues until the repo is lint-clean |

## Linting

The repository uses `cspell` for spell-checking and `markdownlint-cli2` for
Markdown formatting. Node.js must be installed to run linting.

**Install dependencies:**

```sh
npm install
```

**Check for issues:**

```pwsh
pwsh ./lint.ps1
```

**Auto-fix Markdown formatting:**

```pwsh
pwsh ./fix.ps1
```

Run `fix.ps1` after making changes and before raising a pull request. Then run
`lint.ps1` to confirm everything is clean (or use the `lint-fix` agent to do both
automatically).

## Standards

All standards documents live in `.github/standards/`. They are loaded selectively
by agents based on the type of work being performed:

| Standards file | When to load |
| -------------- | ------------ |
| `coding-principles.md` | Any source code changes |
| `csharp-language.md` | C# source code |
| `testing-principles.md` | Any test changes |
| `csharp-testing.md` | C# tests |
| `requirements-principles.md` | Requirements authoring or review |
| `software-items.md` | Categorizing software components |
| `reqstream-usage.md` | Requirements management with ReqStream |
| `design-documentation.md` | Design documentation |
| `reviewmark-usage.md` | Review configuration with ReviewMark |
| `technical-documentation.md` | Any documentation |

## License

[MIT](LICENSE)
