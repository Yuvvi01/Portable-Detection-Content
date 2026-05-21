# Portable Detection Content Package

This package contains the deployable copy of the portable detection library.

## Included Content

- Analytic rule templates
- Hunting query templates
- Connector notes
- Ransomware extension and IOC watchlists
- Public threat-intel source registry
- Web attack parameter correlation templates
- Package metadata

The content is tool-neutral. Translate table names, field names, lookup names, watchlist imports, and query syntax to the target platform before production deployment.

## Deployment Guidance

1. Select only the rules that match available telemetry.
2. Map normalized fields such as `EndpointTelemetry`, `WebTelemetry`, `NetworkTelemetry`, `PublicIOCs`, `ProcessName`, `CmdLine`, `FileHash`, `DnsRequest`, and `Url`.
3. Add local allowlists for approved administrators, security tools, backup systems, scanners, and deployment tools.
4. Run rules in audit mode first.
5. Review false positives before enabling automated response.
