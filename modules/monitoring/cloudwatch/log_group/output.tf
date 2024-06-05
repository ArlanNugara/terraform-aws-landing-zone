// CloudWatch Log Group Output

output "output_log_group_id" {
  value       = aws_cloudwatch_log_group.log_group.id
  description = "CloudWatch Log Group ID"
}

output "output_log_group_arn" {
  value       = aws_cloudwatch_log_group.log_group.arn
  description = "CloudWatch Log Group ARN"
}

output "output_log_group_name" {
  value       = aws_cloudwatch_log_group.log_group.name
  description = "CloudWatch Log Group Name"
}