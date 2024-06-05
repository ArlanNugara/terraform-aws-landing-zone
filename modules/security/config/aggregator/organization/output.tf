// Config Aggregator Output

output "output_config_aggregator_id" {
  value       = aws_config_configuration_aggregator.org_aggregator.id
  description = "Config Aggregator ID"
}

output "output_config_aggregator_arn" {
  value       = aws_config_configuration_aggregator.org_aggregator.arn
  description = "Config Aggregator ARN"
}