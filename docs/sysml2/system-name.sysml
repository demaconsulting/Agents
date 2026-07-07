// TODO: Replace SystemName, SubsystemName, UnitName, OtsName with your actual names
// (PascalCase). Rename this file to {system-name}.sysml (kebab-case).
//
// Read the sysml2-modeling.md standard before editing this file. Add one `part def`
// per subsystem and per unit, and one `part` usage per direct member, mirroring the
// containment hierarchy in docs/design/introduction.md. If this repository contains
// more than one system, create one file per system instead of reusing this one.
package SystemName {
    import OtsDependencies::*;
    // TODO: Uncomment and adjust if this repository also has a shared.sysml.
    // import SharedPackages::*;

    doc
    /*
     * TODO: One or two sentences describing what SystemName does.
     */

    part def SystemNameSystem {
        doc /* The SystemName system as a whole. */

        // TODO: One `part` line per direct member (subsystem, top-level unit, or
        // OTS/shared dependency used at the system level).
        part subsystemName : SubsystemNameSubsystem;
        part otsName : OtsName;
    }

    part def SubsystemNameSubsystem {
        doc /* TODO: One sentence describing this subsystem's responsibility. */

        // TODO: One `part` line per unit contained in this subsystem.
        part unitName : UnitName;
    }

    part def UnitName {
        doc /* TODO: One sentence describing this unit's responsibility. */
    }
}
