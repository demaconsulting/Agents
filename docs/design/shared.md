# Shared Package Dependencies

<!-- TEMPLATE-DIRECTIVE:
     Describe the project's overall strategy for consuming shared packages.
     The per-item files in shared/ cover the specifics of each individual shared package. -->

## Consumption Policy

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description of how this project consumes shared packages. Do not record
     specific version numbers here — version information is managed in SBOMs outside of design
     documentation. Cover:
     - How shared packages are referenced (e.g. NuGet).
     - Policy on consuming pre-release versions.
     - How advertised features are selected versus ignored.
          ("Advertised features" are the capabilities the shared package itself documents as
          supported in its own repository — the consuming repo records which of those it
          relies on in docs/reqstream/shared/{package-name}.yaml.) -->

## Version Management Policy

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description of how shared package version upgrades are managed. Do not
     record specific version numbers here — version information is managed in SBOMs outside of
     design documentation. Cover:
     - How upgrades are initiated (e.g. Dependabot, coordination with the shared package team).
     - What triggers a design review (e.g. breaking changes, major version changes). -->

## General Integration Approach

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description of the general patterns used to integrate shared packages. Cover:
     - How shared packages are consumed (e.g. direct API, configuration-driven initialization, dependency injection).
     - Any cross-cutting conventions applied consistently across all shared packages. -->
