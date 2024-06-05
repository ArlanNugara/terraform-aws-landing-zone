// Config Aggregator

resource "aws_config_configuration_aggregator" "org_aggregator" {
  name = var.aggregator_name
  tags = var.aggregator_tags
  organization_aggregation_source {
    role_arn    = var.role_arn
    all_regions = true
  }
}