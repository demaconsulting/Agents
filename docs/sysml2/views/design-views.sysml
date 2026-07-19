// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Views rendered into
//      docs/design/generated/ and embedded in the Design document. Reopens each system's
//      package so `expose` statements can reference their target `part def` directly. Per
//      SysML2Tools syntax, `expose` is only valid inside a named `view` usage (not a
//      `view def` definition), and it - not `render` - is what scopes the rendered
//      diagram content.
//
//      This file is a sibling of docs/sysml2/model/ (not nested inside it), so a single
//      'docs/sysml2/model/**/*.sysml' glob never needs to exclude view files.
//
//      Naming convention: SoftwareStructureView (whole model), {SystemName}SystemView (one
//      per system), {SubsystemName}View (one per subsystem). Replace SystemName and
//      SubsystemName with your actual names (PascalCase). Add or remove views to match
//      the systems and subsystems actually modeled in this repository.
//
//      Each view exposes both the container part def and its direct children
//      (`expose X; expose X::*;`) and renders `asInterconnectionDiagram` so nested
//      composition (and, where declared, `dependency` relationships) render correctly.
//      Prefer `sysml2tools query uses`/`used-by`/`dependencies` over dedicated dependency
//      diagrams to answer "what uses/depends on this?" questions - see
//      sysml2-modeling.md. Uncomment the OTS import below if this repository has a
//      model/ots.sysml file. -->
package SystemName {
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/ots.sysml file. -->
    // import OtsDependencies::*;

    view SoftwareStructureView {
        expose SystemName::**;
        render asInterconnectionDiagram;
    }

    view SystemNameSystemView {
        expose SystemNameSystem;
        expose SystemNameSystem::*;
        render asInterconnectionDiagram;
    }

    view SubsystemNameView {
        expose SubsystemNameSubsystem;
        expose SubsystemNameSubsystem::*;
        render asInterconnectionDiagram;
    }
}
