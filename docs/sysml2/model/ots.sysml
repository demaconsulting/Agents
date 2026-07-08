// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Model OTS
//      (off-the-shelf) dependencies used by the system(s) in this repository. Add one
//      `part def` per OTS item, matching docs/design/ots/{ots-name}.md. Replace SystemName
//      and OtsName with your actual names (PascalCase). Remove this file (and its import
//      in model/{system-name}.sysml) if the project has no OTS dependencies worth
//      modeling. -->
package OtsDependencies {
    doc /* Off-the-shelf (OTS) dependencies used by SystemName. */

    // <!-- TEMPLATE-DIRECTIVE:
    //      One `part def` per OTS item. OTS items have no sourceRef/testRef (no local
    //      integration code) - use designRef (when the optional design doc exists) /
    //      verificationRef / reqRef only. -->
    part def OtsName {
        doc /* OTS: OtsName - TODO: one sentence describing its purpose here. */

        comment designRef /* Design: docs/design/ots/ots-name.md */
        comment verificationRef /* Verification: docs/verification/ots/ots-name.md */
        comment reqRef /* Requirements: docs/reqstream/ots/ots-name.yaml */
    }
}
