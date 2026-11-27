## {ToolName}

<!-- TEMPLATE-DIRECTIVE:
     Replace {ToolName} with the OTS tool name. Heading depth ## - OTS tools sit at the same
     level as runtime OTS items. -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

### Verification Approach

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description of how this tool's required functionality is verified. OTS
     tools are verified by the tool's own self-validation evidence produced in CI (e.g.
     `--validate --results`), not by local tests. Cover:
     - Which CI job runs the self-validation and where its results are collected. -->

### Test Scenarios

<!-- TEMPLATE-DIRECTIVE:
     Write one paragraph block per scenario. Each block has two parts:

     **ScenarioName**: One or two sentences describing what condition or behavior is being
     verified and why it matters, and what the expected outcome is.
     This scenario is tested by `SelfValidationTestName`.

     Use a blank line between scenarios. Do not use sub-headings. -->
