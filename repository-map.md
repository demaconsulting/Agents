---
name: Repository Map
description: Reference map of the standard repository layout. Load when auditing
  structural conformance or creating new items across multiple artifact trees.
---

> **Note:** This file references additional standards (e.g. *Technical Documentation*,
> `reviewmark-usage.md`) that are expected to be present in `.github/standards/` of the
> consuming repository. These standards are provided by the repository that synchronizes
> with this template and will be available to agents in that context.

# Read First

Read these standards before using this map:

- **`software-items.md`** - Software categorization (System/Subsystem/Unit/OTS/Shared Package)

# Software Item Hierarchy

The system/subsystem/unit hierarchy is the backbone of all artifact trees. The
authoritative structure is defined in `docs/design/introduction.md` - do not infer
item classification from folder depth alone.

```text
{system}/                              # system
├── {subsystem}/                       # subsystem (may nest to any depth)
│   ├── {subsystem}/                   # nested subsystem (may recurse)
│   │   └── {unit}                     # unit under a nested subsystem
│   └── {unit}                         # unit under a root subsystem
└── {unit}                             # unit directly under the system
```

Every software item has artifacts at matching relative paths across all trees:

```text
docs/reqstream/    {system-name}/[{subsystem-name}/]...{unit-name}.yaml
docs/design/       {system-name}/[{subsystem-name}/]...{unit-name}.md
docs/verification/ {system-name}/[{subsystem-name}/]...{unit-name}.md

src/               {SystemName}/[{SubsystemName}/]...{UnitName}.cs                 (C#)
test/              {SystemName}.Tests/[{SubsystemName}/]...{UnitName}Tests.cs      (C#)

include/           {system_name}/[{subsystem_name}/]...{unit_name}.hpp             (C++)
src/               {system_name}/[{subsystem_name}/]...{unit_name}.cpp             (C++)
test/              {system_name}_tests/[{subsystem_name}/]...{unit_name}_tests.cpp (C++)
```

OTS items have artifacts in parallel `ots/` folders, plus a single repo-level test project
(never prefixed with a system name):

```text
docs/reqstream/ots/{ots-name}.yaml
docs/design/ots/{ots-name}.md
docs/verification/ots/{ots-name}.md
test/OtsSoftwareTests/             (C# - optional, when no other verification evidence exists)
test/ots_software_tests/           (C++ - optional, when no other verification evidence exists)
```

Shared packages have artifacts in parallel `shared/` folders:

```text
docs/reqstream/shared/{package-name}.yaml
docs/design/shared/{package-name}.md
docs/verification/shared/{package-name}.md
```

# Template Placeholders

All `{...}` tokens in this map and in template files must be replaced when setting up a
new project. Project-level placeholder values are defined once in `AGENTS.md` under
**Project Overview** — read that file to get the canonical values:

- `{ProjectName}` — from `project-name` in AGENTS.md (e.g., `ReqStream`)
- `{OrganizationName}` — from `organization` in AGENTS.md (e.g., `DEMA Consulting`)
- `{ProjectTagline}` — from `project-tagline` in AGENTS.md (e.g., `A .NET CLI tool for requirements traceability`)
- `{org}` / `{repo}` — derive from `git remote get-url origin`
  (e.g., `https://github.com/DemaConsulting/ReqStream` → `{org}` = `DemaConsulting`, `{repo}` = `ReqStream`)

Item-level placeholders appear once per software item. Each has three casing forms:
kebab-case for `docs/`, PascalCase for C# `src/`/`test/`, snake_case for C++ `src/`/`test/`:

- `{system-name}` / `{SystemName}` / `{system_name}` — system identifier
- `{subsystem-name}` / `{SubsystemName}` / `{subsystem_name}` — subsystem identifier
- `{unit-name}` / `{UnitName}` / `{unit_name}` — unit identifier
- `{ots-name}` / `{OtsName}` — OTS item identifier (docs only; no C++ form)
- `{package-name}` / `{PackageName}` — shared package identifier (docs only; no C++ form)

# Repository Root

Items marked *(optional)* appear only when applicable to the project.

```text
{repo-root}/
├── .config/
│   └── dotnet-tools.json          # Pinned .NET tool versions
├── .cspell.yaml                   # Spell-check dictionary
├── .editorconfig                  # Cross-editor formatting rules
├── .fileassert.yaml               # CI file existence assertions
├── .gitignore                         # Git ignore rules
├── .markdownlint-cli2.yaml        # Markdown lint configuration
├── .reviewmark.yaml               # Review-set definitions (protected)
├── .versionmark.yaml              # Tool version tracking
├── .yamlfix.toml                  # YAML auto-formatter configuration
├── .yamllint.yaml                 # YAML lint rules
├── {ProjectName}.slnx             # C# solution file (optional)
├── CMakeLists.txt                 # C++ root build file (optional)
├── build.ps1                      # Build solution and run tests
├── fix.ps1                        # Auto-fix all linting; always exits 0
├── lint.ps1                       # Full lint check for CI
├── package.json                   # Node.js markdown/YAML tools
├── pip-requirements.txt           # Python yamllint/yamlfix dependencies
├── README.md                      # Project overview and build steps
├── requirements.yaml              # ReqStream root includes file
├── nuget.config                   # NuGet package sources (optional)
├── docs/
├── include/                       # C++ public headers (optional)
├── src/
└── test/
```

# Documentation Tree

Every folder under `docs/` except `docs/reqstream/` and `docs/template/` is a
**Pandoc document collection** (see the *Technical Documentation* standard for
collection format). The `generated/` subfolder within each collection is **never
committed** to the repository - do not flag its absence as a conformance issue.

```text
docs/
├── template/                      # Pandoc HTML template (not a doc collection)
│   └── template.html              # Shared template used by all definition.yaml files (optional)
├── build_notes/                   # Toolchain installation guide
│   ├── title.txt
│   ├── definition.yaml
│   ├── introduction.md
│   └── {section}.md               # Additional content sections (optional)
├── code_quality/                  # Static analysis evidence
│   ├── title.txt
│   ├── definition.yaml
│   ├── introduction.md
│   └── {section}.md               # Generated analysis content sections (optional)
├── code_review_plan/              # Formal review plan (generated by ReviewMark)
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
├── code_review_report/            # Completed review records
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
├── design/                        # Software design documentation
│   ├── title.txt
│   ├── definition.yaml
│   ├── introduction.md            # Software Structure and Folder Layout sections
│   ├── {system-name}.md           # System-level design
│   ├── {system-name}/
│   │   ├── {subsystem-name}.md    # Subsystem design (subsystems may nest)
│   │   └── {unit-name}.md         # Unit design
│   ├── ots.md                     # OTS section heading (optional)
│   ├── ots/                       # OTS design files (optional)
│   │   └── {ots-name}.md          # OTS integration and usage design
│   ├── shared.md                  # Shared package section heading (optional)
│   └── shared/                    # shared package design files (optional)
│       └── {package-name}.md      # Shared package integration and usage design
├── reqstream/                     # Requirements YAML tree (not a Pandoc collection)
│   ├── {system-name}.yaml         # System-level requirements
│   ├── {system-name}/
│   │   ├── platform-requirements.yaml  # Platform/OS/runtime requirements (optional)
│   │   ├── {subsystem-name}.yaml  # Subsystem requirements (may nest)
│   │   └── {unit-name}.yaml       # Unit requirements
│   ├── ots/                       # OTS requirements (optional)
│   │   └── {ots-name}.yaml        # OTS item requirements
│   └── shared/                    # shared package requirements (optional)
│       └── {package-name}.yaml    # Shared package requirements
├── requirements_doc/              # Compiled requirements document
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
├── requirements_report/           # Requirements traceability matrix
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
├── user_guide/                    # User and integrator guide
│   ├── title.txt
│   ├── definition.yaml
│   ├── introduction.md
│   └── {section}.md               # Additional content sections (optional)
├── verification/                  # Verification design documentation
│   ├── title.txt
│   ├── definition.yaml
│   ├── introduction.md
│   ├── {system-name}.md           # System verification design
│   ├── {system-name}/
│   │   ├── {subsystem-name}.md    # Subsystem verification design (may nest)
│   │   └── {unit-name}.md         # Unit verification design
│   ├── ots.md                     # OTS section heading (optional)
│   ├── ots/                       # OTS verification files (optional)
│   │   └── {ots-name}.md          # OTS verification evidence
│   ├── shared.md                  # Shared package section heading (optional)
│   └── shared/                    # shared package verification files (optional)
│       └── {package-name}.md      # Shared package verification evidence
├── ots/                           # OTS software catalog document collection (optional)
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
├── overview/                      # High-level project overview document collection (optional)
│   ├── title.txt
│   ├── definition.yaml
│   └── introduction.md
└── tools_validation_report/       # Tool version validation document collection (optional)
    ├── title.txt
    ├── definition.yaml
    └── introduction.md
```

# Source and Test Trees

All trees mirror the Software Item Hierarchy — subsystems nest to any depth, units may
appear directly under a system or under any subsystem level.

**C# projects** use `src/` and `test/` with PascalCase names:

```text
src/
└── {SystemName}/
    ├── {SystemName}.csproj
    ├── {UnitName}.cs                # System-level unit (optional)
    └── {SubsystemName}/             # Mirrors hierarchy; may nest
        └── {UnitName}.cs            # One class file per unit
├── {SystemName}.Tests/
│   ├── {SystemName}.Tests.csproj
│   ├── {SystemName}Tests.cs         # System-level integration tests
│   └── {SubsystemName}/             # Mirrors src/ subsystem hierarchy
│       ├── {SubsystemName}Tests.cs  # Subsystem-level integration tests
│       └── {UnitName}Tests.cs       # Unit tests
└── OtsSoftwareTests/                # Repo-level OTS integration tests (one file per OTS item) (optional)
```

**C++ projects** use `include/`, `src/`, and `test/` with snake_case names:

```text
include/
└── {system_name}/
    └── {subsystem_name}/            # Mirrors hierarchy; may nest
        └── {unit_name}.hpp          # public API header - installed with the package

src/
└── {system_name}/
    └── {subsystem_name}/            # Mirrors hierarchy; may nest
        ├── {unit_name}.cpp          # implementation
        └── {unit_name}_impl.hpp     # internal header - not part of the public API

test/
├── {system_name}_tests/
│   └── {subsystem_name}/            # Mirrors hierarchy; may nest
│       └── {unit_name}_tests.cpp    # unit tests mirroring src/ hierarchy
└── ots_software_tests/              # Repo-level OTS integration tests (one file per OTS item) (optional)
```

# Review Sets

`.reviewmark.yaml` defines review sets organized by the same system/subsystem/unit
hierarchy. For design principles, naming conventions, and file-pattern guidance see
the `reviewmark-usage.md` standard.

# Conformance Checking

When auditing a repository against this standard:

- **Optional items**: Absence of any *(optional)* item is not a violation
- **`generated/` folders**: Absence is not a violation - they are created by the build
- **`bin/` and `obj/` folders**: Build outputs - not subject to conformance checking
- **Extra files**: Additional files not listed here (CI workflow definitions,
  tool-specific configuration) are not violations unless they conflict with the
  standard layout
