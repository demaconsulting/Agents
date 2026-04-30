# Introduction

## Purpose

This document is the user guide for DEMA Agents — the shared agent definitions
and coding standards used across DEMA Consulting repositories.

## Scope

This user guide covers:

- What agents are and how they work
- How to install DEMA Agents into a repository
- The available agents and when to use them
- The available coding standards and how they are applied

# What Are Agents?

Agents are AI assistant configurations that guide GitHub Copilot and other AI
tools when working in a repository. They define how the AI should behave,
what standards to apply, and how to delegate work to specialized sub-agents.

DEMA Agents provides:

- **`AGENTS.md`** — top-level instructions loaded by every agent
- **`.github/agents/`** — specialized agent prompts for specific workflows
- **`.github/standards/`** — detailed coding and documentation standards

# Installation

Download the latest release zip from the
[Releases](https://github.com/demaconsulting/Agents/releases) page and extract
its contents into the root of the target repository. The zip preserves the
required directory structure:

```text
AGENTS.md
.github/
    agents/
        developer.agent.md
        formal-review.agent.md
        implementation.agent.md
        lint-fix.agent.md
        quality.agent.md
        software-architect.agent.md
    standards/
        coding-principles.md
        cpp-language.md
        cpp-testing.md
        csharp-language.md
        csharp-testing.md
        design-documentation.md
        reqstream-usage.md
        requirements-principles.md
        reviewmark-usage.md
        software-items.md
        technical-documentation.md
        testing-principles.md
```

Commit the extracted files. GitHub Copilot will automatically discover
`AGENTS.md` at the repository root, the agent prompts in `.github/agents/`,
and the coding standards in `.github/standards/`.

## Post-Installation Customization

After extracting the files, open `AGENTS.md` and update the following
template placeholders with values specific to the target repository:

- **Project Overview** — replace the `TODO` values for `name`, `description`,
  `languages`, and `technologies`
- **Project Structure** — replace `{project}` and `{test-project}` with the
  actual source and test project folder names

# Available Agents

## software-architect

An interactive interviewing agent that helps you design software architecture
collaboratively. The agent asks one question at a time, covering scope,
technology, functionality, quality attributes, and future plans. After the
interview it produces a standalone `architecture.md` document ready to attach
to a work item or issue ticket.

**When to use:** Beginning a new project, designing a new system or subsystem,
or capturing architectural decisions before implementation begins.

**Invoke with:** `@software-architect` — then answer its questions.

## implementation

An orchestrator agent that manages complex feature development through a formal
state machine: **PLANNING → DEVELOPMENT → QUALITY → REPORT**. It automatically
calls the `developer` and `quality` sub-agents and retries up to three times if
quality gates fail.

**When to use:** Complex or multi-step features, bug fixes requiring systematic
investigation, or any work where automatic quality validation is desired.

**Invoke with:** `@implementation <description of work to do>`

**Output:** A saved report at `.agent-logs/implementation-<subject>-<id>.md`.

## formal-review

An agent for running structured formal reviews against a defined review-set. It
downloads the standard review checklist, elaborates the files in the review-set,
and produces a populated review report.

**When to use:** Performing a formal compliance review, auditing files against
the review checklist, or verifying a release candidate.

**Invoke with:** `@formal-review <review-set-name>`

**Output:** A populated review report at
`.agent-logs/reviews/review-report-<review-set>.md`.

## Other Agents

| Agent | Purpose |
| ----- | ------- |
| `developer` | General-purpose development — applies the right standards for the detected languages and file types |
| `quality` | Grades completed work against project standards and Continuous Compliance practices |
| `lint-fix` | Pre-PR sweep — loops `pwsh ./lint.ps1` and fixes all issues until the repo is lint-clean |

# Coding Standards

Standards documents in `.github/standards/` are loaded selectively by agents
based on the type of work being performed:

| Standards file | When to load |
| -------------- | ------------ |
| `coding-principles.md` | Any source code changes |
| `cpp-language.md` | C++ source code |
| `cpp-testing.md` | C++ tests |
| `csharp-language.md` | C# source code |
| `csharp-testing.md` | C# tests |
| `testing-principles.md` | Any test changes |
| `requirements-principles.md` | Requirements authoring or review |
| `software-items.md` | Categorizing software components |
| `reqstream-usage.md` | Requirements management with ReqStream |
| `design-documentation.md` | Design documentation |
| `reviewmark-usage.md` | Review configuration with ReviewMark |
| `technical-documentation.md` | Any documentation |

# Continuous Compliance

DEMA Agents follows the
[Continuous Compliance](https://github.com/demaconsulting/ContinuousCompliance)
methodology. Each release ships with a generated Build Notes PDF and User Guide
PDF, providing a traceable record of changes and usage documentation.
