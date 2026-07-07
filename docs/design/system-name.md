# {SystemName}

<!-- TEMPLATE-DIRECTIVE:
     Replace {SystemName} with your system name. Top-level heading (#) - collection root. -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

## Architecture

<!-- TEMPLATE-DIRECTIVE:
     Embed this system's SysML2 view diagram (see sysml2-modeling.md) first:

     ![{SystemName} Structure]({SystemName}View.svg)

     Then describe the system's architecture in prose: what each subsystem and top-level
     unit is responsible for, and how they collaborate. Architecturally significant
     cross-subsystem dependencies not obvious from the containment diagram belong in the
     Data Flow section below rather than a separate diagram here.

     There is no system-level code — a system is purely a collection of subsystems and units.
     For trivially simple systems, a prose description is sufficient. -->

## External Interfaces

<!-- TEMPLATE-DIRECTIVE:
     Write one block per external interface, separated by blank lines.

     **InterfaceName**: Brief description of what this interface is.

     - *Type*: The kind of interface (e.g. HTTP/REST, gRPC, CLI, file, in-process .NET public API).
     - *Role*: Provider (other entities connect to this system) or Consumer (this system connects out).
     - *Contract*: What is exchanged — endpoints, commands, public types/methods, data formats, responses.
     - *Constraints*: Authentication, rate limits, error handling obligations, or other requirements. -->

## Dependencies

<!-- TEMPLATE-DIRECTIVE:
     List OTS items and Shared Packages this system depends on. Do not include version
     numbers — version information is managed in SBOMs outside of design documentation.
     Reference their integration design in docs/design/ots/ and docs/design/shared/.
     Example:
     - **{OtsName}**: used for {purpose} - see *{OtsName} Integration Design*
     - **{PackageName}**: provides {features} - see *{PackageName} Integration Design* -->

## Risk Control Measures

<!-- TEMPLATE-DIRECTIVE:
     Identify any software items that must be segregated from each other for risk control.
     Risk control applies to safety-classified software (e.g. IEC 62304). If this project has
     no safety classification, write "N/A - not a safety-classified software item".
     Otherwise, list each segregation requirement as a bullet, then describe the isolation mechanism.
     - **ItemA** and **ItemB**: isolated by {mechanism} (e.g. separate processes, memory boundaries,
       access restrictions). -->

## Data Flow

<!-- TEMPLATE-DIRECTIVE:
     Describe how data moves through the system from its external inputs to its outputs.

     For simple linear flows, use numbered steps:
     1. Step one.
     2. Step two.

     For flows with branching, parallel paths, or multiple subsystems, use a Mermaid diagram:
     ```mermaid
     flowchart LR
         A[Input] --> B[SubsystemOne] --> C[SubsystemTwo] --> D[Output]
     ``` -->

## Design Constraints

<!-- TEMPLATE-DIRECTIVE:
     List each constraint as a bullet point. For example:
     - Platform: targets .NET 8 on Linux and Windows.
     - Performance: must process requests within 200ms at p99.
     - Security: all data at rest must be encrypted. -->
