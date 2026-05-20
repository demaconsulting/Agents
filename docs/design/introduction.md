# Introduction

<!-- TODO: Replace {ProjectName} with your project/repo name, and {SystemName} with each
individual system name. A project may contain multiple systems. -->

<!-- TODO: Write a brief paragraph describing what this software does and how it is structured —
     local items (systems, subsystems, and units), OTS software items, and shared packages. -->

## Purpose

<!-- TODO: State the purpose: this document defines the design for each software item — full
     architectural and detailed design for local items (systems, subsystems, and units), and
     integration/usage design for OTS software items and shared packages. A reviewer should be
     able to understand how each item satisfies its requirements without reading source code. -->

## Scope

<!-- TODO: List all software items covered: local items (systems, subsystems, and units), OTS
     software items, and shared packages. State what is out of scope (e.g. test projects,
     build pipeline, the internal design of OTS items). -->

## Software Structure

<!-- TODO: Replace the tree below with your actual software structure.
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

<!-- TODO: Replace the tree below with your actual source folder layout.
For C++, use snake_case and .cpp/.hpp extensions. -->

```text
src/{SystemName}/
└── {SubsystemName}/
    └── {UnitName}.cs               - TODO: one-line description

test/{SystemName}.Tests/
├── {SystemName}Tests.cs            - TODO: system-level integration tests
└── {SubsystemName}/
    ├── {SubsystemName}Tests.cs     - TODO: subsystem-level integration tests
    └── {UnitName}Tests.cs          - TODO: one-line description
```

## Companion Artifact Structure

Each local software item has corresponding artifacts in parallel directory trees:

- Requirements: `docs/reqstream/{system-name}.yaml`, `docs/reqstream/{system-name}/.../{item}.yaml`
- Design: `docs/design/{system-name}.md`, `docs/design/{system-name}/.../{item}.md`
- Verification: `docs/verification/{system-name}.md`, `docs/verification/{system-name}/.../{item}.md`
- Source: `src/{SystemName}/.../{Item}.cs`
- Tests: `test/{SystemName}.Tests/.../{Item}Tests.cs`

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

<!-- TODO: List references to related documents and external standards.
     - External links must be absolute URLs.
     - References to other project documents should be by document name only
       (e.g., "{ProjectName} Requirements Document"), not relative file links, as this
       document is compiled to PDF.
     If there are no references, leave this section as N/A. -->

N/A
