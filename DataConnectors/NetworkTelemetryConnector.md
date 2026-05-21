# Network Telemetry Connector

## Purpose

Provides normalized outbound connection telemetry for correlating application-layer events with server-side network behavior.

## Required Fields

- `TimeGenerated`
- `Hostname`
- `SrcIp`
- `DstIp`
- `DestinationPort`
- `NetworkDirection`
- `Protocol`
- `ProcessName`

## Normalization Notes

- Map web server hostnames consistently between web telemetry and network telemetry.
- Preserve outbound destination IP, port, protocol, and process context when available.
- Maintain allowlists for expected web server egress destinations, proxy infrastructure, and update services.
- Enrich destination IPs with private, loopback, link-local, and cloud metadata address classifications.
