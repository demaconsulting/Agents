# Agents

This repository manages the shared agent definitions and coding standards
distributed to DEMA Consulting repositories via release zip.

## Overview

The distributable files live in `src/` and are packaged into a release zip
on each release:

- **`src/AGENTS.md`** — top-level instructions loaded by every agent
- **`src/.github/agents/`** — specialized agent prompts for specific workflows
- **`src/.github/standards/`** — detailed coding and documentation standards

See the [User Guide](docs/user_guide/introduction.md) for full documentation
on available agents, standards, and installation instructions.

## Installation

Download the latest release zip from the
[Releases](https://github.com/demaconsulting/Agents/releases) page and extract
its contents into the root of the target repository. Commit the extracted files.

After extraction, open `AGENTS.md` and replace the `TODO` placeholders in the
**Project Overview** section and the `{project}`/`{test-project}` folder names
in the **Project Structure** section with values specific to the target
repository.

## Commonly Used Agents

### `software-architect`

An interactive interviewing agent that helps you design software architecture
collaboratively. After the interview it produces a standalone `architecture.md`
document in the current working directory.

**Invoke with:** `@software-architect` — then answer its questions.

### `implementation`

An orchestrator agent that manages complex feature development through a formal
state machine: **PLANNING → DEVELOPMENT → QUALITY → REPORT**. It automatically
calls the `developer` and `quality` sub-agents and retries up to three times if
quality gates fail.

**Invoke with:** `@implementation <description of work to do>`

### `formal-review`

An agent for running structured formal reviews against a defined review-set,
producing a populated review report saved to `.agent-logs/reviews/`.

**Invoke with:** `@formal-review <review-set-name>`

## Other Available Agents

| Agent | Purpose |
| ----- | ------- |
| `developer` | General-purpose development — applies the right standards for the detected languages and file types |
| `quality` | Grades completed work against project standards and Continuous Compliance practices |
| `lint-fix` | Pre-PR sweep — loops `pwsh ./lint.ps1` and fixes all issues until the repo is lint-clean |

## License

[MIT](LICENSE)
