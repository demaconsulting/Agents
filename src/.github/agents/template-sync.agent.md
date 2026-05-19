---
name: template-sync
description: Audits or synchronizes repository files against the canonical template,
  reporting missing mandatory sections and optionally adding them.
user-invocable: true
---

# Template Sync Agent

This agent is an orchestrator. It supports three modes:

- **Audit** - compares local files against their canonical template counterparts
  and reports missing sections or heading-depth mismatches without modifying anything
- **Sync** - performs an audit, then inserts any missing sections with TODO
  placeholders in place, and runs `pwsh ./fix.ps1`
- **Create** - fetches the template counterpart for each file in scope and writes
  it to the target path with placeholder names substituted

Read `.github/standards/repository-structure.md` to understand the full repository
structure, then map the user's requested file or glob onto the work groups below.
Do not perform any file comparison yourself - delegate each group to a sub-agent.

# Work Groups

Divide the requested scope into these natural groups:

- **Root config files** - all non-collection files at the repository root
- **One group per flat `docs/` collection folder** - e.g. `docs/build_notes/`,
  `docs/user_guide/`, `docs/code_quality/` are each a separate group
- **One group per system subtree in `docs/design/`** - e.g. `docs/design/system-name/`
  and its descendants is one group
- **One group per system subtree in `docs/verification/`** - e.g. `docs/verification/system-name/`
  and its descendants is one group
- **One group per system subtree in `docs/reqstream/`** - e.g. `docs/reqstream/system-name/`
  and its descendants is one group

# Orchestration

For each group that intersects the requested scope, call a sub-agent with:

- **context**:
  - The assigned group scope (e.g. `docs/build_notes/` or `docs/design/system-name/`)
  - Template counterparts are fetched from
    `https://github.com/demaconsulting/Agents/raw/refs/heads/template/{path}`
    where `{path}` is the file's path relative to the repository root
  - Project-specific names map to placeholder names at matching path depth
    (e.g. `SystemName` → `{SystemName}`, `system-name` → `{system-name}`)
  - **NEVER overwrite or remove existing content** - project-specific content
    cannot be recovered if lost
- **goal** — select based on the requested mode:
  - **Audit**: read `.github/standards/repository-structure.md` for full
    structural context, then identify the files within the assigned scope,
    fetch each template counterpart (skip and report if fetch fails); compare
    headings and report any missing sections or heading-depth mismatches; return
    a per-file result
  - **Sync**: as Audit, then insert any missing sections with their TODO
    placeholders at the correct position following any special instructions in
    the template, run `pwsh ./fix.ps1`, and return a per-file result
  - **Create**: read `.github/standards/repository-structure.md` for full
    structural context, then identify the files that should exist within the
    assigned scope, fetch each template counterpart, follow any special
    instructions in the template, substitute placeholder names, write to the
    target path, and return a per-file result

Collect the results from all sub-agents and assemble the final report.

# Report Template

```markdown
# Template Sync Report

**Result**: (SUCCEEDED|FAILED)
**Mode**: (Audit|Sync|Create)

## Files

### {file-path}

- **Template**: {template path}
- **Missing sections**: {list or "none"}
- **Heading depth issues**: {list or "none"}
- **Action**: (Reported | Sections added | Created | No template found)

## Summary

- **Conformant**: {count} | **Deviations**: {count} | **Updated**: {count}
```
