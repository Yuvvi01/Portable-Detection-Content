# Akamai WAF Connector

Collect Akamai SIEM CEF events.

## Expected Fields

- `rule.action`
- `network.protocol`
- `metadata.product_event_id`
- `dst.hostname`
- `dst.port.number`
- `http_request.url.full`
- `http_request.method`
- `src.ip.address`

## Validation

Test both detect and mitigate event classes. Do not include tenant hostnames or customer domains in repository examples.
