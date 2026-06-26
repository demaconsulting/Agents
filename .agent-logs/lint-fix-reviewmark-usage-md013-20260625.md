**Result**: SUCCEEDED
**Report**: .agent-logs/lint-fix-reviewmark-usage-md013-20260625.md

# Lint Fix Report

- **Iterations**: 1
- **Files Modified**:
  - `src/.github/standards/reviewmark-usage.md`
- **Issues Fixed**:
  - **MD013 (line-length > 120)**: Wrapped 5 long lines by splitting at natural
    prose boundaries or shortening table cell content:
    - Line 23: split `--enforce` description onto continuation line
    - Line 100: shortened table cell "System + subsystem design docs,
      system + subsystem requirements" → "System + subsystem design docs +
      requirements"
    - Line 122: split `--Purpose--` sentence at "user-facing / promise"
    - Line 125: split `--Scope--` sentence at "requirements.yaml / (the
      structural tree)"
    - Line 208: split `--Context Files--` sentence at "design + / requirements"
