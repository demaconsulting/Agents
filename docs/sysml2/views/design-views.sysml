// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Views rendered into
//      docs/design/generated/ and embedded in the Design document. Reopens each system's
//      package so `expose` statements can reference their target `part def` directly. Per
//      SysML2Tools syntax, `expose` is only valid inside a named `view` usage (not a
//      `view def` definition), and it - not `render` - is what scopes the rendered
//      diagram content.
//
//      Naming convention: SoftwareStructureView (whole model), {SystemName}View (one per
//      system), {SubsystemName}View (one per subsystem). Replace SystemName and
//      SubsystemName with your actual names (PascalCase). Add or remove views to match
//      the systems and subsystems actually modeled in this repository. -->
package SystemName {
    view SoftwareStructureView {
        expose SystemName;
        render asTreeDiagram;
    }

    view SystemNameView {
        expose SystemNameSystem;
        render asTreeDiagram;
    }

    view SubsystemNameView {
        expose SubsystemNameSubsystem;
        render asTreeDiagram;
    }
}
