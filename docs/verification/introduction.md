# Introduction

<!-- TODO: Replace {ProjectName} with your project/repo name, and {SystemName} with each
individual system name. A project may contain multiple systems. -->

This document describes how each software item in {ProjectName} is verified.

## Purpose

<!-- TODO: State the purpose: this document defines the verification approach for each software
     item — local items (systems, subsystems, and units), OTS software items, and shared packages.
     For each item, name the test scenarios that verify its requirements. For OTS items, state
     whether verification uses authored integration tests or external evidence (e.g. vendor test
     results, published compliance reports). A reviewer should be able to confirm coverage
     completeness without reading test code. -->

## Scope

<!-- TODO: List all software items covered: local items (systems, subsystems, and units), OTS
     software items, and shared packages. State what is out of scope (e.g. test infrastructure,
     build pipeline). -->

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

<!-- TODO: Replace this comment with references to related documents and external standards.
     - External links must be absolute URLs.
     - References to other project documents (compiled PDFs) should link to
       https://github.com/{org}/{repo}/releases — do not add any additional links,
       and never link to individual source files in docs/ as these are source chapters
       for compiled PDFs and are not useful as standalone documents.
     If there are no references, replace this comment with: N/A -->
