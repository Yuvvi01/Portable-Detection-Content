# Getting Started

1. Review `categories/rule_categories.yaml` to find templates by data source or attack type.
2. Open the matching file under `Detections/`.
3. Review the matching connector note under `DataConnectors/`.
4. Map source fields to the required telemetry fields for each rule.
5. Replace generic query fields with approved internal schema mappings in a private deployment workflow.
6. Test with historical data and tune allowlists before enabling response actions.
7. Run `Tools/Validate-Content.ps1` before publishing changes.
