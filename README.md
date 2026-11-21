# ![{ProjectName}: {tagline line one} {tagline line two} {body text}. Shown with the command '{command}' and the note '{footnote}'. {Inputs} flow into the {tool} tool, and arrows lead out to {outputs}][hero]

<!-- IMPORTANT: All links in this file must be absolute URLs.
     This file is distributed in packages and relative links will not resolve. -->

<!-- TEMPLATE-DIRECTIVE:
     The hero banner IS the H1: the heading is the banner image, and the status badges follow directly under it.
     This keeps a real top-level heading (named by the image's alt text) without a second, duplicate title above
     or below the banner, which already shows the project name.
     1. Customize docs/images/hero.svg by following the TEMPLATE-DIRECTIVE comments inside it
        (name, tagline, body, command, footnote, engine label, and the input and output cards).
     2. Run `pwsh docs/images/render-hero.ps1` and look at docs/images/hero.png.
     3. Commit docs/images/hero.svg and docs/images/hero.png together, with any files the SVG embeds
        from docs/images/hero/ (`pwsh docs/images/render-hero.ps1 -Check` detects a stale PNG).
     4. Replace the alt text in the heading with a factual description of the banner. It starts with the
        project name and a colon (it names the heading), then gives the tagline and body text as written on the
        banner, the command, the footnote, what flows in, the tool, and what comes out. BuildMark's example:
        "BuildMark: Markdown build notes from GitHub or Azure DevOps. Reads version tags, pull requests and
        issues; writes the changes, bugs fixed and known issues between two versions. Shown with the command
        'buildmark --report notes.md --build-version v1.2.3' and the note '.NET 10 and 11, Windows, Linux,
        macOS'. Version tags, pull requests, GitHub issues, and Azure DevOps work items flow into the buildmark
        .NET tool, and arrows lead out to Markdown build notes with Changes, Bugs Fixed, and Known Issues
        sections, release notes, a CI pipeline artifact, and a PDF made from the notes by Pandoc"
     The image link must stay an absolute URL: replace {org}/{repo} in the [hero] reference at the end of
     this file. -->

<!-- TEMPLATE-DIRECTIVE:
     Replace {ProjectName} with your project name throughout this file.
     Add status badges here, directly under the hero heading (e.g. CI, version, license).
     Example: [![CI](https://github.com/{org}/{repo}/actions/workflows/ci.yaml/badge.svg)](https://github.com/{org}/{repo}/actions/workflows/ci.yaml) -->

## Overview

<!-- TEMPLATE-DIRECTIVE:
     Write a short paragraph describing what this project does and why it exists. -->

## Features

<!-- TEMPLATE-DIRECTIVE:
     List the key capabilities — aim for 3–7 bullets, each one sentence.
     - Feature one
     - Feature two
     - Feature three -->

## Installation

```bash
# TODO: Add the package manager command to install this as a dependency.
```

## Usage

```bash
# TODO: Show the single most common use case with a minimal working example.
```

## Building

```pwsh
pwsh ./build.ps1
```

## User Guide

<!-- TEMPLATE-DIRECTIVE:
     Replace {org}/{repo} with your GitHub organization and repository name.
     The link to the releases page below is the only link needed — do not add any additional
     links. In particular, do not link to individual source files in docs/ as these are source
     chapters for a compiled PDF and are not useful as standalone documents. -->

The {ProjectName} User Guide is available on the
[{ProjectName} releases page](https://github.com/{org}/{repo}/releases).

## Contributing

<!-- TEMPLATE-DIRECTIVE:
     Add a CONTRIBUTING.md and reference it here with an absolute URL.
     Example: See [CONTRIBUTING.md](https://github.com/{org}/{repo}/blob/main/CONTRIBUTING.md) for guidelines. -->

## License

<!-- TEMPLATE-DIRECTIVE:
     Add a LICENSE file and reference it here with an absolute URL.
     Example: This project is licensed under the MIT License — see [LICENSE](https://github.com/{org}/{repo}/blob/main/LICENSE). -->

## Support

<!-- TEMPLATE-DIRECTIVE:
     Add absolute URLs for GitHub Issues and Discussions.
     Example:
     - [Report a bug or request a feature](https://github.com/{org}/{repo}/issues)
     - [Ask a question or start a discussion](https://github.com/{org}/{repo}/discussions) -->

[hero]: https://raw.githubusercontent.com/{org}/{repo}/main/docs/images/hero.png
