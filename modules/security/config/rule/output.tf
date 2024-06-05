// Config Rule Output

output "output_config_rule_id" {
  value       = aws_config_config_rule.config_rule.rule_id
  description = "Config Rule ID"
}

output "output_config_rule_arn" {
  value       = aws_config_config_rule.config_rule.arn
  description = "Config Rule ARN"
}