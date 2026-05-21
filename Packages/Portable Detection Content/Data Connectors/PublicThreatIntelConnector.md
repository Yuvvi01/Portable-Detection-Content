# Public Threat Intel Connector

Use this connector note for importing approved public IOC feeds into a normalized lookup or enrichment table named `PublicIOCs`.

## Required Fields

- `value`
- `type`
- `source.name`
- `status`

## Recommended Fields

- `first_seen`
- `last_seen`
- `confidence`
- `campaign`
- `malware_family`
- `tags`
- `signature_name`
- `license`
- `tlp`

Treat public indicators as enrichment context. Prefer correlation with endpoint, network, web, identity, or alert telemetry before triggering disruptive response actions.
