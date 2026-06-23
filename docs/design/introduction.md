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

     State what is out of scope. Clarify that design documents are not produced for test
     projects or build pipeline CI configuration, and that the internal design of OTS items
     is also excluded. -->

## Software Structure

<!-- TEMPLATE-DIRECTIVE:
     Replace the bullet list below with your actual software structure.
     Use the exact labels: (System), (Subsystem), (Unit), (OTS), (Shared Package).
     Add a brief description after the '-' on each line.
     Add additional systems if the project contains more than one. -->

- **{SystemName}** (System) - brief description
  - **{SubsystemName}** (Subsystem) - brief description
    - {UnitName} (Unit) - brief description

**OTS Dependencies:**

- {OtsName} (OTS)

**Shared Packages:**

- {PackageName} (Shared Package)

## Folder Layout

<!-- TEMPLATE-DIRECTIVE:
     Replace the bullet list below with your actual source folder layout.
     List folders only - do not list individual files.
     Add a brief description after the '-' on each line. -->

- **src/** - source files and projects
  - **{SystemName}/** - brief description
    - **{SubsystemName}/** - brief description

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
     - References to other project documents (compiled PDFs) should use the document name
       only — do not include URLs. Never link to individual source files in docs/.
     - If there are no references, replace this comment with: N/A

     For example:
     - External Standard Name: https://example.com/standard
     - [{ProjectName} releases](https://github.com/{org}/{repo}/releases)
       (or the equivalent releases/tags page if not hosted on GitHub) -->
