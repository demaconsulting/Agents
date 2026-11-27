## {ToolName}

<!-- TEMPLATE-DIRECTIVE:
     Replace {ToolName} with the OTS tool name. Heading depth ## - OTS tools sit at the same
     level as runtime OTS items. This file is OPTIONAL for OTS tools - remove it (and its
     entries in definition.yaml, .reviewmark.yaml, and the tool's SoftwareInfo designFiles)
     if the tool needs no usage design. -->

<!-- All sections below are MANDATORY. If a section does not apply, write
     "N/A - {justification}" rather than removing it. -->

<!-- TEMPLATE-DIRECTIVE:
     Write a prose paragraph describing this OTS tool's role in the build or CI pipeline.
     This prose appears directly under the ## {ToolName} heading, before ### Purpose. -->

### Purpose

<!-- TEMPLATE-DIRECTIVE:
     Write a prose paragraph covering:
     - Why this tool was chosen over alternatives.
     - What it provides to the build, test, documentation, or compliance process. -->

### Features Used

<!-- TEMPLATE-DIRECTIVE:
     List which specific features or commands of this tool are used.
     Do not document features that are not used by this repository.
     - **FeatureName** — how it is used. -->

### Integration Pattern

<!-- TEMPLATE-DIRECTIVE:
     Write a prose description of how this tool is used. Cover:
     - How it is installed and pinned (e.g. .config/dotnet-tools.json, pip-requirements.txt).
     - Where it is invoked (e.g. build.ps1, lint.ps1, CI workflow jobs) and with what inputs.

     If there is a specific sequence of steps required, use a numbered list:
     1. Step one.
     2. Step two. -->
