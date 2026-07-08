// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Model shared package
//      dependencies used by the system(s) in this repository, mirroring
//      docs/design/shared/{package-name}.md files. Add one `part def` per shared package.
//      Replace SystemName and PackageName with your actual names (PascalCase). This file
//      is OPTIONAL - remove it (and its import in model/{system-name}.sysml) if the
//      project has no shared package dependencies. -->
package SharedPackages {
    doc /* Shared package dependencies used by SystemName. */

    // <!-- TEMPLATE-DIRECTIVE:
    //      One `part def` per shared package. Shared packages have no sourceRef/testRef
    //      (no local integration code) - use designRef (when the optional design doc
    //      exists) / verificationRef / reqRef only. -->
    part def PackageName {
        doc /* Shared: PackageName - TODO: one sentence describing its purpose here. */

        comment designRef /* Design: docs/design/shared/package-name.md */
        comment verificationRef /* Verification: docs/verification/shared/package-name.md */
        comment reqRef /* Requirements: docs/reqstream/shared/package-name.yaml */
    }
}
