# Introduction

<!-- TEMPLATE-DIRECTIVE:
     Replace {ProjectName} with your project/repo name, and {SystemName} with each
     individual system name. A project may contain multiple systems. -->

This document describes how each software item in {ProjectName} is verified.

## Purpose

<!-- TEMPLATE-DIRECTIVE:
     Write a prose paragraph stating the purpose of this document. For example:
     This document describes how each software item in {ProjectName} is verified — local items
     (systems, subsystems, and units), OTS software items, and shared packages. For each item,
     it names the test scenarios that verify its requirements. A reviewer should be able to
     confirm coverage completeness without reading test code. -->

## Scope

<!-- TEMPLATE-DIRECTIVE:
     List all software items covered, grouped by type. For example:
     Local items:
     - **{SystemName}**: system, subsystem, and unit verification.

     OTS items:
     - **{OtsName}**: integration and usage verification.

     Shared packages:
     - **{PackageName}**: integration and usage verification.

     State what is out of scope. Note that verification documents are not produced for the
     test projects themselves - they are the means of verification, not subjects of it.
     Build pipeline CI configuration and the internal implementation of OTS items are also
     excluded. -->

## Folder Layout

<!-- TEMPLATE-DIRECTIVE:
     Replace the example below with your actual test folder layout.
     List folders only - do not list individual files.
     Add a brief description after the '-' on each line. -->

- **test/** - test projects
  - **{SystemName}.TestHelpers/** - brief description (if applicable)
  - **{SystemName}.Tests/** - brief description
  - **{SystemName}.Fixtures/** - brief description (if applicable)

## Companion Artifact Structure

Local items have parallel artifacts in:

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
