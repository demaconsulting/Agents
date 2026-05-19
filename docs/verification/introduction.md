# Introduction

<!-- TODO: Replace {ProjectName} with your project/repo name, and {SystemName} with each
individual system name. A project may contain multiple systems. -->

This document describes how each requirement for {ProjectName} is verified.

## Purpose

<!-- TODO: State the purpose: this document bridges requirements and tests, naming test scenarios
and mapping each requirement to at least one named test so reviewers can confirm completeness
without reading test code. -->

## Scope

<!-- TODO: List all software items whose verification is covered here (systems, subsystems, units).
Also list OTS items and Shared Packages covered.
State what is out of scope (test infrastructure, build pipeline). -->

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

<!-- TODO: Add external references if applicable. Remove section if none. -->
