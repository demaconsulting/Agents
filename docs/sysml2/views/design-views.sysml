// <!-- TEMPLATE-DIRECTIVE:
//      Read the sysml2-modeling.md standard before editing this file. Views rendered into
//      docs/design/generated/ and embedded in the Design document. Declares one
//      repository-level views package that imports the system facade (which re-exports the
//      subsystem and unit packages) so
//      `expose` statements can reference their target `part def` directly. Never name this
//      package after a library package such as `Views`, which would shadow the library. Per
//      SysML2Tools syntax, `expose` is only valid inside a named `view` usage (not a
//      `view def` definition), and it - not `render` - is what scopes the rendered
//      diagram content.
//
//      This file is a sibling of docs/sysml2/model/ (not nested inside it), so a single
//      'docs/sysml2/model/**/*.sysml' glob never needs to exclude view files.
//
//      Naming convention: SoftwareStructureView (system-level overview), {SystemName}SystemView (one
//      per system), {SubsystemName}View (one per subsystem). Replace SystemName and
//      SubsystemName with your actual names (PascalCase). This views file declares
//      the single repository-level package `{RepoName}DesignViews` (replace RepoName with
//      the repository name, PascalCase), even when the repository has several systems.
//      Add or remove views to match
//      the systems and subsystems actually modeled in this repository.
//
//      SoftwareStructureView is the system-level overview, typed by the standard
//      `InterconnectionView` definition (imported from `StandardViewDefinitions`). It exposes
//      the system part defs: each system renders as a frame with its direct subsystem part
//      usages nested inside (unit detail lives in the per-system and per-subsystem views), so
//      with several systems expose each system's part def (not the whole package recursively)
//      and add `filter not (@SysML::Documentation);`. Keep OTS items in a separate small
//      `OtsView : GeneralView` that exposes `OtsDependencies::*` with the same filter. Keep
//      metadata defs such as SoftwareInfo out of overviews - see sysml2-modeling.md.
//      Requires sysml2tools 0.3.0-beta.4 or later.
//
//      Each other view exposes both the container part def and its direct children
//      (`expose X; expose X::*;`) and renders `asInterconnectionDiagram` so nested
//      composition renders correctly. `asInterconnectionDiagram` comes from the `Views`
//      library, so keep `private import Views::*;` (`lint --strict-unresolved` reports it
//      unresolved otherwise). Prefer `sysml2tools query uses`/`used-by`/
//      `dependencies` for "what uses/depends on this?" questions. A focused dependency
//      view is also allowed: expose one subsystem's units plus the suppliers named in their
//      `dependency` statements, keep it to about 12-15 dependency edges (split large
//      subsystems into themed views), omit hub suppliers (say so in the view's `doc`), and
//      make sure it renders without PNG downscaling - see sysml2-modeling.md. Uncomment the
//      OTS import and the `OtsView` below if this repository has a model/ots.sysml file. -->
package RepoNameDesignViews {
    // <!-- TEMPLATE-DIRECTIVE: Uncomment if this repository has a model/ots.sysml file. -->
    // private import OtsDependencies::*;
    private import StandardViewDefinitions::*;
    private import Views::*;
    private import SystemName::*;   // the system facade re-exports every subsystem and unit package

    view SoftwareStructureView : InterconnectionView {
        expose SystemName::SystemNameSystem;
        filter not (@SysML::Documentation);
    }

    // <!-- TEMPLATE-DIRECTIVE: Uncomment this view together with the OtsDependencies import
    //      above if this repository has a model/ots.sysml file. -->
    // view OtsView : GeneralView {
    //     expose OtsDependencies::*;
    //     filter not (@SysML::Documentation);
    // }

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
