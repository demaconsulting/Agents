## {SubsystemName}

<!-- TEMPLATE-DIRECTIVE:
     Read standards: software-items.md, design-documentation.md, technical-documentation.md,
     sysml2-modeling.md
     Consult docs/design/introduction.md to determine whether this item is a Software
     Subsystem or a Software Unit — folder depth does not determine classification.
     - If this is a SUBSYSTEM: populate the sections below (Overview, Interfaces, Design).
     - If this is a UNIT: use the unit-name.md template in the same folder instead.
     Replace {SubsystemName} with your subsystem name.
     Adjust the heading depth to match this file's folder depth under docs/design/
     (## = one folder deep, ### = two folders deep, etc.).
     Immediately below this heading, before any other content, embed this subsystem's
     SysML2 view diagram (see sysml2-modeling.md):

     ![{SubsystemName} Structure]({SubsystemName}View.svg) -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

### Overview

<!-- TEMPLATE-DIRECTIVE:
     Write a prose paragraph covering:
     - What problem this subsystem solves.
     - What its boundaries are (what is inside vs. outside).
     - Which units it contains. -->

### Interfaces

<!-- TEMPLATE-DIRECTIVE:
     Write one block per interface, separated by blank lines. List all interfaces as a flat
     sequence — do NOT introduce sub-headings or groupings (e.g. Provider vs. Consumer).

     **InterfaceName**: Brief description of what this interface is.

     - *Type*: The kind of interface (e.g. HTTP/REST, gRPC, CLI, file, in-process .NET public API).
     - *Role*: Provider (other subsystems consume this) or Consumer (this subsystem consumes it).
     - *Contract*: What is exchanged — endpoints, commands, public types/methods, data formats, responses.
     - *Constraints*: Authentication, rate limits, error handling obligations, or other requirements. -->

### Design

<!-- TEMPLATE-DIRECTIVE:
     Describe how the units assemble to fulfil this subsystem's responsibilities.
     There is no subsystem-level code — describe the flow of data and control between units.

     For simple linear flows, use numbered steps:
     1. Step one.
     2. Step two.

     For flows with branching or parallel paths, use a Mermaid diagram:
     ```mermaid
     sequenceDiagram
         CallerUnit->>UnitA: method call
         UnitA->>UnitB: method call
         UnitB-->>UnitA: result
         UnitA-->>CallerUnit: result
     ``` -->
