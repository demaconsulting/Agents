// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to
//      docs/sysml2/model/{system-name}/{subsystem-name}/{unit-name}.sysml (kebab-case),
//      matching the folder depth of this unit's companion docs/design/, docs/reqstream/,
//      and docs/verification/ files. Replace SystemName and UnitName with your actual
//      names (PascalCase). This file declares its own package, `SystemName_UnitName`
//      ({SystemName}_{UnitName}; never reuse a package name from another file). Import
//      exactly what this unit references, with `private import` of the specific item's
//      package (`private import SystemName_OtherUnit::*;`), never of a facade
//      (`SystemName` or a subsystem package): the facade re-exports this unit, so that
//      would form an import cycle. For a part def owned by a facade (the system or a
//      subsystem), or where two units depend on each other, use the qualified name instead
//      (`dependency UnitName to SystemName_OtherUnit::OtherUnit;`). Package names must be
//      unique repository-wide: if another subsystem has a unit with the same name, qualify
//      both (`SystemName_SubsystemName_UnitName`). -->
package SystemName_UnitName {
    private import SoftwareItemMetadata::*;

    part def UnitName {
        doc /* TODO: One sentence describing this unit's responsibility. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Fill in the paths to this unit's companion artifacts. Omit testFiles if
        //      this unit has no dedicated test file (exercised only indirectly through
        //      another unit's tests). If this unit has no dedicated design/verification/
        //      requirements doc, point designFiles/verificationFiles/requirementFiles at
        //      the parent subsystem's doc instead, with a short parenthetical note in
        //      the doc comment above. -->
        metadata info : SoftwareInfo {
            sourceFiles = ("src/{Project}/{SubsystemName}/UnitName.cs");
            testFiles = ("test/{Project}.Tests/{SubsystemName}/UnitNameTests.cs");
            designFiles = ("docs/design/system-name/subsystem-name/unit-name.md");
            verificationFiles = ("docs/verification/system-name/subsystem-name/unit-name.md");
            requirementFiles = ("docs/reqstream/system-name/subsystem-name/unit-name.yaml");
        }
    }
}
