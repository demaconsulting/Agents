// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to docs/sysml2/model/{system-name}/{subsystem-name}.sysml
//      (kebab-case), matching the folder depth of this subsystem's companion
//      docs/design/, docs/reqstream/, and docs/verification/ files. Replace SystemName
//      and SubsystemName with your actual names (PascalCase). Create one file per unit
//      contained in this subsystem under docs/sysml2/model/{system-name}/{subsystem-name}/,
//      and one file per nested sub-subsystem alongside this file. This file reopens the
//      `SystemName` package so its part def merges with the system-level file - no
//      `import` is needed as long as all files are passed to sysml2tools together. -->
package SystemName {
    part def SubsystemNameSubsystem {
        doc /* TODO: One sentence describing this subsystem's responsibility. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Subsystems have no sourceRef (no single source file represents a whole
        //      subsystem). Keep designRef/verificationRef/reqRef pointed at the
        //      subsystem-level companion docs. -->
        comment designRef /* Design: docs/design/system-name/subsystem-name.md */
        comment verificationRef /* Verification: docs/verification/system-name/subsystem-name.md */
        comment reqRef /* Requirements: docs/reqstream/system-name/subsystem-name.yaml */

        // <!-- TEMPLATE-DIRECTIVE: One `part` line per unit contained in this subsystem. -->
        part unitName : UnitName;
    }
}
