// Security Hub Finding Aggregator

resource "aws_securityhub_finding_aggregator" "sh_finding_aggregator" {
  linking_mode      = var.sh_finding_aggregator_linking_mode
  specified_regions = var.sh_finding_aggregator_regions
}