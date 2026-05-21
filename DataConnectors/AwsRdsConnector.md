# AWS RDS Connector

Collect AWS RDS MySQL and PostgreSQL logs through the approved AWS log ingestion path.

## Expected Fields

- `metadata.original_time`
- `query_info.uid`
- `query_info.query_string`
- `metadata.log_level`
- `database.name`
- `actor.user.name`

## Validation

Confirm MySQL error logs, MySQL general logs, and PostgreSQL logs are routed to the expected normalization branches.
