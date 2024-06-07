// Config Aggregator

resource "aws_config_configuration_aggregator" "acc_aggregator" {
  name = var.aggregator_name
  tags = merge(
    {
      Name = var.aggregator_name
    },
    var.default_tags
  )
  account_aggregation_source {
    account_ids = var.aggregator_account_ids
    all_regions = true
  }
}