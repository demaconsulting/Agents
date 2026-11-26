// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Model the OTS tools
//      (build, test, documentation, and compliance tooling that never ships) used by this
//      repository. Add one `part def` per OTS tool, matching
//      docs/verification/ots/tools/{tool-name}.md. Replace ToolName with your actual name
//      (PascalCase). OTS tools are never parts of a system - they are `part`s of the single
//      `Toolchain` below. Remove this file (and the ToolchainView in
//      views/design-views.sysml) if the project has no OTS tools worth modeling. -->
package OtsTools {
    private import SoftwareItemMetadata::*;

    doc /* Off-the-shelf (OTS) tools used to build, test, document, and qualify this repository. */

    // <!-- TEMPLATE-DIRECTIVE:
    //      One `part def` per OTS tool. OTS tools have no sourceFiles/testFiles (verified by
    //      their own CI self-validation evidence) - set designFiles (only when the optional
    //      design doc exists) / verificationFiles / requirementFiles, all under ots/tools/. -->
    part def ToolName {
        doc /* OTS tool: ToolName - TODO: one sentence describing its purpose here. */

        metadata info : SoftwareInfo {
            designFiles = ("docs/design/ots/tools/tool-name.md");
            verificationFiles = ("docs/verification/ots/tools/tool-name.md");
            requirementFiles = ("docs/reqstream/ots/tools/tool-name.yaml");
        }
    }

    part def Toolchain {
        doc /* The OTS tools used by this repository's build and CI pipeline. */

        // <!-- TEMPLATE-DIRECTIVE: One `part` line per OTS tool part def above. -->
        part toolName : ToolName;
    }
}
