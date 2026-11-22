// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to docs/sysml2/model/{system-name}/{subsystem-name}.sysml
//      (kebab-case), matching the folder depth of this subsystem's companion
//      docs/design/, docs/reqstream/, and docs/verification/ files. Replace SystemName
//      and SubsystemName with your actual names (PascalCase). Create one file per unit
//      contained in this subsystem under docs/sysml2/model/{system-name}/{subsystem-name}/,
//      and one file per nested sub-subsystem alongside this file. This file declares its
//      own package, `SystemName_SubsystemNameSubsystem` ({SystemName}_{SubsystemName}Subsystem;
//      never reuse a package name from another file). It is a facade: `public import` the
//      package of each unit or nested sub-subsystem it contains (`SystemName_UnitName`),
//      downward only, so they resolve through `SystemName::*`. Use `private import` for
//      anything else this file references, and never import a facade from below it. -->
package SystemName_SubsystemNameSubsystem {
    private import SoftwareItemMetadata::*;
    public import SystemName_UnitName::*;

    part def SubsystemNameSubsystem {
        doc /* TODO: One sentence describing this subsystem's responsibility. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Subsystems have no sourceFiles (no single source file represents a whole
        //      subsystem). Keep designFiles/verificationFiles/requirementFiles pointed at
        //      the subsystem-level companion docs. -->
        metadata info : SoftwareInfo {
            designFiles = ("docs/design/system-name/subsystem-name.md");
            verificationFiles = ("docs/verification/system-name/subsystem-name.md");
            requirementFiles = ("docs/reqstream/system-name/subsystem-name.yaml");
        }

        // <!-- TEMPLATE-DIRECTIVE: One `part` line per unit contained in this subsystem. -->
        part unitName : UnitName;
    }
}
