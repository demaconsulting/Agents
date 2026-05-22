### {UnitName}

<!-- TEMPLATE-DIRECTIVE:
     Replace {UnitName} with your unit name.
     Adjust the heading depth to match this file's folder depth under docs/design/
     (## = one folder deep, ### = two folders deep, etc.). -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

#### Purpose

<!-- TEMPLATE-DIRECTIVE:
     Describe this unit's single responsibility. -->

#### Data Model

<!-- TEMPLATE-DIRECTIVE:
     Write one line per field or property, separated by blank lines if descriptions run long.

     **FieldName**: `Type` — Description of its role and any invariants that must hold. -->

#### Key Methods

<!-- TEMPLATE-DIRECTIVE:
     Write one block per significant method, separated by blank lines.

     **MethodName**: Brief statement of purpose.

     - *Parameters*: `paramType paramName` — description.
     - *Returns*: `returnType` — description.
     - *Preconditions*: What must be true before calling.
     - *Postconditions*: What is guaranteed on return.

     Prose description of the algorithm, key steps, or notable behaviour. Omit if the
     purpose and pre/postconditions are sufficient. -->

#### Error Handling

<!-- TEMPLATE-DIRECTIVE:
     Describe how this unit detects and handles error conditions: invalid inputs,
     failed dependencies, exceptional states. Document what errors are propagated vs. handled
     locally. -->

#### Dependencies

<!-- TEMPLATE-DIRECTIVE:
     List what this unit depends on: other units, subsystems, OTS items, and shared packages.
     Do not include version numbers — version information is managed in SBOMs outside of design
     documentation.
     - **DependencyName** — reason for the dependency. -->

#### Callers

<!-- TEMPLATE-DIRECTIVE:
     List which units or subsystems call or consume this unit.
     - **CallerName**
     If no other unit calls this unit (e.g. it is a top-level entry point or event handler),
     write "N/A - entry point, called by the host environment". -->
