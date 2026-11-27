// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to docs/sysml2/model/{system-name}.sysml (kebab-case). Replace
//      SystemName with your actual name (PascalCase). This file defines the System-level
//      `part def` ONLY - do not inline Subsystems/Units here. Create one file per direct
//      Subsystem/Unit under docs/sysml2/model/{system-name}/, mirroring the folder depth
//      of this item's companion docs/design/, docs/reqstream/, and docs/verification/
//      files. If this repository contains more than one system, create one system-level
//      file per system instead of reusing this one. Every file declares exactly one
//      uniquely named top-level package; this one is `SystemName`, the system facade that
//      consumers use. `public import` the package of each direct member (the
//      `SystemName_{SubsystemName}Subsystem` package declared in that member's own file)
//      so the `part` usages below resolve and `SystemName::{AnyItem}` resolves through the
//      chained re-exports. Public imports go downward only, following ownership; use
//      `private import` for everything else (see Package Structure in sysml2-modeling.md). -->
package SystemName {
    private import SoftwareItemMetadata::*;
    public import SystemName_SubsystemNameSubsystem::*;

    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/ots.sysml file. -->
    // private import OtsDependencies::*;
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/shared.sysml file. -->
    // private import SharedPackages::*;

    doc
    /*
     * TODO: One or two sentences describing what SystemName does.
     */

    part def SystemNameSystem {
        doc /* The SystemName system as a whole. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Systems have no sourceFiles (no single source file represents a whole
        //      system). Keep designFiles/verificationFiles/requirementFiles pointed at
        //      the system-level companion docs. -->
        metadata info : SoftwareInfo {
            designFiles = ("docs/design/system-name.md");
            verificationFiles = ("docs/verification/system-name.md");
            requirementFiles = ("docs/reqstream/system-name.yaml");
        }

        // <!-- TEMPLATE-DIRECTIVE:
        //      One `part` line per direct member (subsystem or top-level unit), typed by
        //      the part def declared in that member's own file under
        //      docs/sysml2/model/{system-name}/. Uncomment and adjust the OTS/shared
        //      example lines below once the corresponding import above is uncommented.
        //      Runtime OTS items are `part`s of the system only (never of a subsystem or
        //      unit); OTS tools (model/tools.sysml) are never parts of a system. -->
        part subsystemName : SubsystemNameSubsystem;
        // part otsName : OtsName;
        // part packageName : PackageName;
    }
}
