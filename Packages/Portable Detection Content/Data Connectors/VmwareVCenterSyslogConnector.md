# VMware vCenter Syslog Connector

Collect vCenter syslog events from the approved syslog collector.

## Expected Fields

- `time`
- `severity`
- `device.hostname`
- `actor.user.name`
- `src.ip.address`
- `http_request.method`
- `http_request.url.full`

## Validation

Verify vpxd, envoy access, vAPI endpoint access, and sudo-style events normalize to the same entity fields used by the detection rules.
