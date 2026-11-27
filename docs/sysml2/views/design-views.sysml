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
//      per system), {SubsystemName}View (one per subsystem), and the optional ToolchainView
//      (OTS tools). Replace SystemName and
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
//      and add `filter not (@SysML::Documentation);`. Runtime OTS part usages render inside
//      the system frame. If this repository has a model/tools.sysml file, add a small
//      `ToolchainView : InterconnectionView` (a GeneralView renders every tool in one
//      unreadably wide row) that exposes `OtsTools::Toolchain` with the same
//      filter. Keep metadata defs such as SoftwareInfo out of overviews - see
//      sysml2-modeling.md. Requires sysml2tools 0.3.0-beta.4 or later.
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
//      `ToolchainView` below if this repository has a model/tools.sysml file. -->
package RepoNameDesignViews {
    private import StandardViewDefinitions::*;
    private import Views::*;
    private import SystemName::*;   // the system facade re-exports every subsystem and unit package

    view SoftwareStructureView : InterconnectionView {
        expose SystemName::SystemNameSystem;
        filter not (@SysML::Documentation);
    }

    // <!-- TEMPLATE-DIRECTIVE: Uncomment this view if this repository has a
    //      model/tools.sysml file (the qualified name needs no import). -->
    // view ToolchainView : InterconnectionView {
    //     expose OtsTools::Toolchain;
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
