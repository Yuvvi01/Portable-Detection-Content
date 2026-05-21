# Endpoint Telemetry Connector

Use the endpoint telemetry ingestion path already approved in your environment. This can be an EDR connector, XDR export, SIEM agent, log forwarder, data lake table, or API feed.

## Required Event Coverage

- Process start events with process name, path, command line, hash, user, parent process, and host.
- File create, modify, rename, and delete events with path, extension, process, user, and host.
- Network connection events with source, destination, port, protocol, process, user, and host.
- Authentication or identity context where available.
- Process access events for high-confidence credential theft detections, especially target process and granted access.

## Mapping Notes

Normalize the source data to the `EndpointTelemetry` data type used by these templates, or replace `EndpointTelemetry` with the table or index name used by your platform. Keep local allowlists for approved administrators, security tools, remote management tools, backup tools, and expected bulk file operations.
