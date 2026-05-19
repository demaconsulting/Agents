---
name: template-sync
description: Audits or synchronizes repository files against the canonical template,
  reporting missing mandatory sections and optionally adding them.
user-invocable: true
---

# Template Sync Agent

Read `repository-structure.md` first - it defines the complete file inventory and
placeholder naming conventions. Fetch template counterparts from:
`https://github.com/demaconsulting/Agents/raw/refs/heads/template/{path}`

Map each project file to its template by substituting project-specific names with
placeholder names at matching path depth (e.g. `{SystemName}` → `SystemName`,
`{system-name}` → `system-name`).

**NEVER overwrite or remove existing content** - project-specific content cannot be
recovered if lost.

# Heading Depth

Adjust all headings to match the target file's folder depth under the collection root:

| Depth | Top heading | Subsections |
| --- | --- | --- |
| 0 | `#` | `##`, `###`, ... |
| 1 | `##` | `###`, `####`, ... |
| 2 | `###` | `####`, `#####`, ... |

# Modes

## Audit

1. Identify template counterpart; fetch it - if fetch fails, report and skip
2. Compare headings: report missing sections and heading-depth mismatches

## Sync

1. Audit as above
2. Insert missing sections with their TODO placeholders at the correct position,
   adjusted for heading depth
3. Run `pwsh ./fix.ps1`

## Create

1. Fetch template; substitute placeholder names; adjust heading depth
2. Write to target path

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
