## {UnitName}

<!-- TEMPLATE-DIRECTIVE:
     Read standards: software-items.md, verification-documentation.md, technical-documentation.md
     Consult docs/design/introduction.md to determine whether this item is a Software
     Unit or a Software Subsystem — folder depth does not determine classification.
     - If this is a UNIT: populate the sections below (Verification Approach, Test
       Environment, Acceptance Criteria, Test Scenarios).
     - If this is a SUBSYSTEM: use the subsystem-name.md template in the same folder instead.
     Replace {UnitName} with your unit name.
     Adjust the heading depth to match this file's folder depth under docs/verification/
     (## = one folder deep, ### = two folders deep, etc.). -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

### Verification Approach

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description covering:
     - Which dependencies are mocked or stubbed and why.
     - Which dependencies are injected vs. real. -->

### Test Environment

<!-- TEMPLATE-DIRECTIVE:
     Describe any environment setup specific to this unit's tests.
     If the standard project test runner is sufficient, write "N/A - standard test environment". -->

### Acceptance Criteria

<!-- TEMPLATE-DIRECTIVE:
     List each acceptance criterion as a bullet point. For example:
     - All unit tests pass with zero failures.
     - All requirements have at least one passing test scenario. -->

### Test Scenarios

<!-- TEMPLATE-DIRECTIVE:
     Write one paragraph block per scenario. Each block has two parts:

     **ScenarioName**: One or two sentences describing what condition or behavior is being
     verified and why it matters, and what the expected outcome is.
     This scenario is tested by `TestMethodName`.

     Use a blank line between scenarios. Do not use sub-headings. -->
