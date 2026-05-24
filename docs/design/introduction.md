# Introduction

<!-- TEMPLATE-DIRECTIVE:
     Replace {ProjectName} with your project/repo name, and {SystemName} with each
     individual system name. A project may contain multiple systems. -->

<!-- TEMPLATE-DIRECTIVE:
     Write a brief introductory paragraph here, directly under the # Introduction heading
     and before ## Purpose, describing what this software does and how it is structured —
     local items (systems, subsystems, and units), OTS software items, and shared packages. -->

## Purpose

<!-- TEMPLATE-DIRECTIVE:
     Write a prose paragraph stating the purpose of this document. For example:
     This document defines the design for each software item in {ProjectName} — full
     architectural and detailed design for local items (systems, subsystems, and units),
     and integration/usage design for OTS software items and shared packages. A reviewer
     should be able to understand how each item satisfies its requirements without reading
     source code. -->

## Scope

<!-- TEMPLATE-DIRECTIVE:
     List all software items covered, grouped by type. For example:
     Local items:
     - **{SystemName}**: system, subsystem, and unit design.

     OTS items:
     - **{OtsName}**: integration and usage design.

     Shared packages:
     - **{PackageName}**: integration and usage design.

     State what is out of scope (e.g. test projects, build pipeline, the internal design of OTS items). -->

## Software Structure

<!-- TEMPLATE-DIRECTIVE:
     Replace the tree below with your actual software structure.
     Use the exact labels: (System), (Subsystem), (Unit), (OTS), (Shared Package).
     Add additional systems if the project contains more than one. -->

```text
{SystemName} (System)
├── {SubsystemName} (Subsystem)
│   └── {UnitName} (Unit)

OTS Dependencies:
└── {OtsName} (OTS)

Shared Packages:
└── {PackageName} (Shared Package)
```

## Folder Layout

<!-- TEMPLATE-DIRECTIVE:
     Replace the tree below with your actual source folder layout.
     For C++, use snake_case and .cpp/.hpp extensions.
     In the tree below, replace each "TODO: ..." with a one-line description of that file. -->

```text
src/{SystemName}/
└── {SubsystemName}/
    └── {UnitName}.cs               - one-line description

test/{SystemName}.Tests/
├── {SystemName}Tests.cs            - system-level integration tests
└── {SubsystemName}/
    ├── {SubsystemName}Tests.cs     - subsystem-level integration tests
    └── {UnitName}Tests.cs          - one-line description
```

## Companion Artifact Structure

Each local software item has corresponding artifacts in parallel directory trees:

- Requirements: `docs/reqstream/{system-name}.yaml`, `docs/reqstream/{system-name}[/{subsystem-name}...]/{item}.yaml`
- Design: `docs/design/{system-name}.md`, `docs/design/{system-name}[/{subsystem-name}...]/{item}.md`
- Verification: `docs/verification/{system-name}.md`, `docs/verification/{system-name}[/{subsystem-name}...]/{item}.md`
- Source: `src/{SystemName}[/{SubsystemName}...]/{Item}.cs`
- Tests: `test/{SystemName}.Tests[/{SubsystemName}...]/{Item}Tests.cs`

OTS items have integration/usage design documentation parallel to system folders:

- Requirements: `docs/reqstream/ots/{ots-name}.yaml`
- Design: `docs/design/ots/{ots-name}.md`
- Verification: `docs/verification/ots/{ots-name}.md`

Shared Packages have integration/usage design documentation parallel to system and OTS folders:

- Requirements: `docs/reqstream/shared/{package-name}.yaml`
- Design: `docs/design/shared/{package-name}.md`
- Verification: `docs/verification/shared/{package-name}.md`

Review-sets: defined in `.reviewmark.yaml`

## References

<!-- TEMPLATE-DIRECTIVE:
     Replace this comment with a bullet list of references with the following rules:
     - External links must be absolute URLs.
     - References to other project documents (compiled PDFs) should link to the releases
       page, not directly to any file in docs/.
     - If there are no references, replace this comment with: N/A

     For example:
     - [External Standard Name](https://example.com/standard)
     - [{ProjectName} releases](https://github.com/{org}/{repo}/releases)
       (or the equivalent releases/tags page if not hosted on GitHub) -->
