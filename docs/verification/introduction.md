# Introduction

<!-- TODO: Replace {ProjectName} with your project/repo name, and {SystemName} with each
individual system name. A project may contain multiple systems. -->

This document describes how each software item in {ProjectName} is verified.

## Purpose

<!-- TODO: Write a prose paragraph stating the purpose of this document. For example:
     This document describes how each software item in {ProjectName} is verified — local items
     (systems, subsystems, and units), OTS software items, and shared packages. For each item,
     it names the test scenarios that verify its requirements. A reviewer should be able to
     confirm coverage completeness without reading test code. -->

## Scope

<!-- TODO: List all software items covered, grouped by type. For example:
     Local items:
     - **{SystemName}**: system, subsystem, and unit verification.

     OTS items:
     - **{OtsName}**: integration and usage verification.

     Shared packages:
     - **{PackageName}**: integration and usage verification.

     State what is out of scope (e.g. test infrastructure, build pipeline). -->

## Companion Artifact Structure

Local items have parallel artifacts in:

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

<!-- TODO: Replace this comment with a bullet list of references with the following rules:
     - External links must be absolute URLs.
     - References to other project documents (compiled PDFs) should link to the releases
       page, not directly to any file in docs/.
     - If there are no references, replace this comment with: N/A

     For example:
     - [External Standard Name](https://example.com/standard)
     - [{ProjectName} releases](https://github.com/{org}/{repo}/releases)
       (or the equivalent releases/tags page if not hosted on GitHub) -->
