# Portable Detection Content

Portable Detection Content is a vendor-neutral detection engineering library for SOC, DFIR, cloud security, and threat hunting teams. It provides detection logic templates that can be translated into the query language used by a SIEM, EDR, XDR, data lake, or security analytics platform.

The repository is intentionally focused on detection logic, telemetry assumptions, tuning guidance, and watchlist structure. It does not depend on one commercial tool or one query dialect.

## What This Repository Contains

- `Detections/` - analytic rule templates grouped by data source or threat theme
- `Hunting Queries/` - investigation and correlation templates for analyst-led hunts
- `DataConnectors/` - ingestion and required-field notes for each telemetry source
- `Watchlists/` - lookup structures for ransomware extensions, ransomware IOCs, and public threat-intel sources
- `Packages/Portable Detection Content/` - packaged copy of deployable rules, hunts, connector notes, and watchlists
- `categories/` - indexes by attack type and content pack
- `rules/` - CSV and YAML exports for rule inventory review
- `Tools/` - quality checks for sensitive terms, structure, and content hygiene

## Content Packs

### Ransomware Intrusion

Rules and hunts covering the intrusion path typically seen before and during ransomware activity:

- Privilege escalation and abused administration utilities
- Credential theft, LSASS access, registry hive theft, and directory database access
- Discovery and attack-path enumeration
- Lateral movement using remote administration, WMI, WinRM, SMB, RDP, and RMM tools
- Backup and recovery tampering
- Data staging, archive creation, transfer tooling, and cloud sync abuse
- Mass file modification, known ransomware extension matches, and IOC correlation

### Public Threat Intelligence

Templates for using approved public IOC feeds as enrichment rather than blind blocking lists:

- File hash, IP, domain, URL, and signature matches
- Multi-source IOC confidence scoring
- Source-hosting abuse and developer-tool impersonation patterns
- IOC download followed by local execution

### Web Attack Parameters

Correlation rules using high-risk web parameter names commonly associated with XSS, SSRF, LFI, SQL injection, remote command execution, and open redirect testing:

- SSRF or LFI parameter probing followed by server-side egress
- SQLi or RCE parameter probing followed by server error spikes
- Open redirect abuse followed by script-injection probing

## Portability Model

Rules use normalized placeholder data sources such as:

- `EndpointTelemetry`
- `NetworkTelemetry`
- `WebTelemetry`
- `GenericTelemetry`
- `SecurityAlert`
- `PublicIOCs`

Before deployment, map these names and fields to the target platform. The rule logic is designed to preserve detection intent while allowing local query-language translation.

## Quality Expectations

Each industry-facing rule should include:

- Clear detection intent
- Required telemetry fields
- ATT&CK tactics and techniques
- Query logic with local allowlist placeholders
- False-positive and tuning guidance
- Initial response actions
- Version and status metadata

Avoid deploying any rule without validating expected administrative activity, approved security tooling, business-critical applications, and known maintenance windows.

## Current Inventory

- Analytic rule templates: 122
- Hunting query templates: 22
- Connector notes: 12
- Ransomware intrusion rules: 13
- Ransomware hunting queries: 13
- Public threat-intel rules: 8
- Public threat-intel hunting queries: 4
- Web attack parameter correlation rules: 3
- Ransomware extension watchlist entries: 5494
- Ransomware IOC watchlist entries: 1552

## Thank You!
