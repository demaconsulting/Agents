// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Model the runtime
//      OTS (off-the-shelf) items - linked in and shipped with the product - used by the
//      system(s) in this repository. OTS tools (build/CI tooling that never ships) belong
//      in model/tools.sysml, not here. Add one `part def` per runtime OTS item, matching
//      docs/design/ots/{ots-name}.md. Replace SystemName and OtsName with your actual
//      names (PascalCase). Remove this file (and its import in model/{system-name}.sysml)
//      if the project has no runtime OTS dependencies. -->
package OtsDependencies {
    private import SoftwareItemMetadata::*;

    doc /* Runtime off-the-shelf (OTS) dependencies used by SystemName. */

    // <!-- TEMPLATE-DIRECTIVE:
    //      One `part def` per runtime OTS item, used as a `part` only in the system
    //      `part def`; each unit that uses it declares
    //      `dependency {UnitName} to OtsDependencies::{OtsName};`. OTS items have no
    //      sourceFiles/testFiles (no local integration code) - set designFiles (when the
    //      optional design doc exists) / verificationFiles / requirementFiles only. -->
    part def OtsName {
        doc /* OTS: OtsName - TODO: one sentence describing its purpose here. */

        metadata info : SoftwareInfo {
            designFiles = ("docs/design/ots/ots-name.md");
            verificationFiles = ("docs/verification/ots/ots-name.md");
            requirementFiles = ("docs/reqstream/ots/ots-name.yaml");
        }
    }
}
