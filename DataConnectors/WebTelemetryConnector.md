# Web Telemetry Connector

## Purpose

Provides normalized web access, WAF, reverse proxy, CDN, and application gateway events for web attack detection and correlation.

## Required Fields

- `TimeGenerated`
- `SrcIp`
- `HttpHost`
- `Url`
- `UrlQuery`
- `HttpMethod`
- `HttpStatus`
- `UserAgent`
- `RedirectLocation`
- `ServerHostname`

## Normalization Notes

- Extract query parameter names into a searchable field or function that supports parameter-name matching.
- Preserve decoded and raw URL query values where possible.
- Keep redirect target, status code, route, and authenticated user context when available.
- Tag approved scanner, synthetic monitoring, and bug bounty source ranges before production alerting.
