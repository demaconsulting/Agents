// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file.
//      Rename this file to
//      docs/sysml2/model/{system-name}/{subsystem-name}/{unit-name}.sysml (kebab-case),
//      matching the folder depth of this unit's companion docs/design/, docs/reqstream/,
//      and docs/verification/ files. Replace SystemName and UnitName with your actual
//      names (PascalCase). This file reopens the `SystemName` package so its part def
//      merges with the rest of the model - no `import` is needed as long as all files
//      are passed to sysml2tools together. -->
package SystemName {
    part def UnitName {
        doc /* TODO: One sentence describing this unit's responsibility. */

        // <!-- TEMPLATE-DIRECTIVE:
        //      Fill in the paths to this unit's companion artifacts. Omit testRef if
        //      this unit has no dedicated test file (exercised only indirectly through
        //      another unit's tests). If this unit has no dedicated design/verification/
        //      requirements doc, point designRef/verificationRef/reqRef at the parent
        //      subsystem's doc instead, with a short parenthetical note. -->
        comment sourceRef /* Source: src/{Project}/{SubsystemName}/UnitName.cs */
        comment testRef /* Test: test/{Project}.Tests/{SubsystemName}/UnitNameTests.cs */
        comment designRef /* Design: docs/design/system-name/subsystem-name/unit-name.md */
        comment verificationRef /* Verification: docs/verification/system-name/subsystem-name/unit-name.md */
        comment reqRef /* Requirements: docs/reqstream/system-name/subsystem-name/unit-name.yaml */
    }
}
