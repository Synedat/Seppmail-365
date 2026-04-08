# Seppmail-365

> Operational companion repository for the SEPPmail365 PowerShell module used to connect Exchange Online with SEPPmail gateways.

This repository is curated by Synedat Group GmbH for the SEPPmail ecosystem. It is intended as an implementation accelerator for customers, partners and delivery teams.

## Why this repository exists

This repository is designed to be immediately useful in workshops, pilots, production preparation and knowledge transfer. It combines upstream material with additional operational context, safer examples and governance-oriented documentation so that teams can move from an interesting script to a reviewable implementation asset.

## Intended audience

Exchange Online administrators and SEPPmail implementation teams.

## What you will find here

- `docs/ARCHITECTURE.md` - component view and trust boundaries
- `docs/RBAC-AND-PERMISSIONS.md` - practical role separation guidance
- `docs/SECURITY-AND-COMPLIANCE.md` - implementation mapping for ISO 27001, BAIT, DORA, TISAX and NIS2
- `docs/OPERATIONS.md` - operational lifecycle and evidence ideas
- `docs/TROUBLESHOOTING.md` - first-line support guidance
- `docs/SEPPMAIL-REFERENCES.md` - official reference list
- `docs/images/architecture-overview.svg` - lightweight architecture visual
- `examples/install-module.ps1`
- `examples/new-connectors-and-rules.ps1`
- `examples/pre-flight-checklist.md`

## Architecture at a glance

```mermaid
flowchart LR
    A[Sender / Exchange Online] --> B[Connector and transport rules]
    B --> C[SEPPmail gateway or service]
    C --> D[Cryptographic policy / routing]
    D --> E[Recipient domain]
    B -. telemetry .-> F[Logs / monitoring]
    C -. admin API .-> G[Operations and automation]
```

## Practical focus

- usable examples rather than empty scaffolding
- security-conscious defaults and notes on secrets handling
- architecture and permissions thinking, not just commands
- audit-friendly documentation structure
- consistent Synedat branding and discoverability across repositories

## Security and governance themes

This repository intentionally includes implementation notes that align well with:
- ISO/IEC 27001 style ISMS and control evidence
- BAIT expectations for banking IT governance and operations
- DORA-oriented operational resilience thinking
- TISAX-oriented supplier and security process maturity
- NIS2-style cyber hygiene and incident preparedness

## Official SEPPmail references

- [SEPPmail365 PowerShell module](https://docs.seppmail.com/en/04_com_powershell.html)
- [Installation](https://docs.seppmail.com/en/04_com_powershell_installation.html)
- [Using the commandlets](https://docs.seppmail.com/en/04_com_powershell_using-cmdlets.html)
- [Upgrade from a previous version](https://docs.seppmail.com/en/04_com_powershell_upgrade.html)

## Synedat

Synedat Group GmbH works across software engineering, cloud, infrastructure, operations and security-related implementation projects. These repositories are structured to be useful both as public technical starters and as conversation starters for concrete customer delivery.

Website: https://www.synedat.com/

## Upstream and provenance

Where an original SEPPmail community repository was available, its source files were preserved and extended. Original README content, where replaced, was moved to `docs/upstream/ORIGINAL-README.md` for traceability.
