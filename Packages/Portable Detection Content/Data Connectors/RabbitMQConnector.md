# RabbitMQ Connector

Collect RabbitMQ broker logs from the approved host log pipeline.

## Expected Fields

- `time`
- `severity`
- `message`
- `connection.uid`
- `process.name`

## Validation

Confirm connection open, close, authentication failure, and node restart events normalize consistently before enabling detections.
