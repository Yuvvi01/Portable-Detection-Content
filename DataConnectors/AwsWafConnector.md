# AWS WAF Connector

Collect AWS Web Application Firewall JSON logs.

## Expected Fields

- `timestamp`
- `action`
- `terminatingRuleId`
- `webaclId`
- `httpRequest.clientIp`
- `httpRequest.host`
- `httpRequest.uri`
- `httpRequest.headers`

## Validation

Validate JSON parsing, host extraction, request URI extraction, JA3/JA4 fields, labels, and rule group fields.
