// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to {system-name}.sysml (kebab-case). Replace SystemName,
//      SubsystemName, UnitName, OtsName with your actual names (PascalCase). Add one
//      `part def` per subsystem and per unit, and one `part` usage per direct member,
//      mirroring the containment hierarchy in docs/design/introduction.md. If this
//      repository contains more than one system, create one file per system instead
//      of reusing this one. -->
package SystemName {
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has an ots.sysml file. -->
    // import OtsDependencies::*;
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a shared.sysml file. -->
    // import SharedPackages::*;

    doc
    /*
     * TODO: One or two sentences describing what SystemName does.
     */

    part def SystemNameSystem {
        doc /* The SystemName system as a whole. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      One `part` line per direct member (subsystem or top-level unit).
        //      Uncomment and adjust the OTS/shared example lines below once the
        //      corresponding import above is uncommented. -->
        part subsystemName : SubsystemNameSubsystem;
        // part otsName : OtsName;
        // part packageName : PackageName;
    }

    part def SubsystemNameSubsystem {
        doc /* TODO: One sentence describing this subsystem's responsibility. */

        // <!-- TEMPLATE-DIRECTIVE: One `part` line per unit contained in this subsystem. -->
        part unitName : UnitName;
    }

    part def UnitName {
        doc /* TODO: One sentence describing this unit's responsibility. */
    }
}
