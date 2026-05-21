# Redis Connector

Collect Redis server logs through syslog, filebeat, or the approved database log pipeline.

## Expected Fields

- `time`
- `severity`
- `message`
- `metadata.product.name`

## Validation

Test multi-line Redis log messages and verify that warning, error, and notice severities are preserved.
