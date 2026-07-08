// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to docs/sysml2/model/{system-name}.sysml (kebab-case). Replace
//      SystemName with your actual name (PascalCase). This file defines the System-level
//      `part def` ONLY - do not inline Subsystems/Units here. Create one file per direct
//      Subsystem/Unit under docs/sysml2/model/{system-name}/, mirroring the folder depth
//      of this item's companion docs/design/, docs/reqstream/, and docs/verification/
//      files. If this repository contains more than one system, create one system-level
//      file per system instead of reusing this one. -->
package SystemName {
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/ots.sysml file. -->
    // import OtsDependencies::*;
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/shared.sysml file. -->
    // import SharedPackages::*;

    doc
    /*
     * TODO: One or two sentences describing what SystemName does.
     */

    part def SystemNameSystem {
        doc /* The SystemName system as a whole. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Systems have no sourceRef (no single source file represents a whole
        //      system). Keep designRef/verificationRef/reqRef pointed at the
        //      system-level companion docs. -->
        comment designRef /* Design: docs/design/system-name.md */
        comment verificationRef /* Verification: docs/verification/system-name.md */
        comment reqRef /* Requirements: docs/reqstream/system-name.yaml */

        // <!-- TEMPLATE-DIRECTIVE:
        //      One `part` line per direct member (subsystem or top-level unit), typed by
        //      the part def declared in that member's own file under
        //      docs/sysml2/model/{system-name}/. Uncomment and adjust the OTS/shared
        //      example lines below once the corresponding import above is uncommented. -->
        part subsystemName : SubsystemNameSubsystem;
        // part otsName : OtsName;
        // part packageName : PackageName;
    }
}
