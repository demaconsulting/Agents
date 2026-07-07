## {UnitName}

<!-- TEMPLATE-DIRECTIVE:
     Read standards: software-items.md, design-documentation.md, technical-documentation.md,
     sysml2-modeling.md
     Consult docs/design/introduction.md to determine whether this item is a Software
     Unit or a Software Subsystem — folder depth does not determine classification.
     - If this is a UNIT: populate the sections below (Purpose, Data Model, Key Methods,
       Error Handling, Interactions).
     - If this is a SUBSYSTEM: use the subsystem-name.md template in the same folder instead.
     Replace {UnitName} with your unit name.
     Adjust the heading depth to match this file's folder depth under docs/design/
     (## = one folder deep, ### = two folders deep, etc.).
     Immediately below this heading, before any other content, embed the SysML2 view diagram
     for the subsystem this unit belongs to (or the system view if this unit sits directly
     under the system) — see sysml2-modeling.md:

     ![{ContainingSubsystemOrSystemName} Structure]({ContainingSubsystemOrSystemName}View.svg) -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

### Purpose

<!-- TEMPLATE-DIRECTIVE:
     Describe this unit's single responsibility. -->

### Data Model

<!-- TEMPLATE-DIRECTIVE:
     Write one line per field or property, separated by blank lines if descriptions run long.
     List all fields as a flat sequence — do NOT introduce sub-headings or groupings, even
     when fields fall into natural categories (flags, arguments, derived state, etc.).

     **FieldName**: `Type` — Description of its role and any invariants that must hold. -->

### Key Methods

<!-- TEMPLATE-DIRECTIVE:
     Write one block per significant method, separated by blank lines. List all methods as
     a flat sequence — do NOT introduce sub-headings or groupings, even when methods fall
     into natural categories (lifecycle, query, mutation, etc.).

     **MethodName**: Brief statement of purpose.

     - *Parameters*: `paramType paramName` — description.
     - *Returns*: `returnType` — description.
     - *Preconditions*: What must be true before calling.
     - *Postconditions*: What is guaranteed on return.

     Prose description of the algorithm, key steps, or notable behavior. Omit if the
     purpose and pre/postconditions are sufficient. -->

### Error Handling

<!-- TEMPLATE-DIRECTIVE:
     Describe how this unit detects and handles error conditions: invalid inputs,
     failed dependencies, exceptional states. Document what errors are propagated vs. handled
     locally. -->

### Dependencies

<!-- TEMPLATE-DIRECTIVE:
     List what this unit depends on: other units, subsystems, OTS items, and shared packages
     as a flat list — do NOT introduce sub-headings or groupings (e.g. internal vs. OTS).
     Do not include version numbers — version information is managed in SBOMs outside of design
     documentation.
     - **DependencyName** — reason for the dependency. -->

### Callers

<!-- TEMPLATE-DIRECTIVE:
     List which units or subsystems call or consume this unit.
     - **CallerName**
     If no other unit calls this unit (e.g. it is a top-level entry point or event handler),
     write "N/A - entry point, called by the host environment". -->
