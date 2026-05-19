# Introduction

<!-- TODO: Replace {ProjectName} with your project/repo name, and {SystemName} with each
individual system name. A project may contain multiple systems. -->

<!-- TODO: Write a brief paragraph describing what this software does. -->

## Purpose

<!-- TODO: State the purpose of this design document: who reads it, what decisions it supports,
and any regulatory or compliance drivers. -->

## Scope

<!-- TODO: List all software items covered (systems, subsystems, units).
List what is explicitly excluded (test projects, build pipeline, OTS internals). -->

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

<!-- TODO: Add references to external specifications, standards, or program documents.
Remove this section if there are no external references. -->
