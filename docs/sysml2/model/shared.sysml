// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Model shared package
//      dependencies used by the system(s) in this repository, mirroring
//      docs/design/shared/{package-name}.md files. Add one `part def` per shared package.
//      Replace SystemName and PackageName with your actual names (PascalCase). This file
//      is OPTIONAL - remove it (and its import in model/{system-name}.sysml) if the
//      project has no shared package dependencies. -->
package SharedPackages {
    private import SoftwareItemMetadata::*;

    doc /* Shared package dependencies used by SystemName. */

    // <!-- TEMPLATE-DIRECTIVE:
    //      One `part def` per shared package. Shared packages have no sourceFiles/
    //      testFiles (no local integration code) - set designFiles (when the optional
    //      design doc exists) / verificationFiles / requirementFiles only. -->
    part def PackageName {
        doc /* Shared: PackageName - TODO: one sentence describing its purpose here. */

        metadata info : SoftwareInfo {
            description = "Shared: PackageName - TODO: one sentence describing its purpose here.";
            designFiles = ("docs/design/shared/package-name.md");
            verificationFiles = ("docs/verification/shared/package-name.md");
            requirementFiles = ("docs/reqstream/shared/package-name.yaml");
        }
    }
}
