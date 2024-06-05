// Security Hub Output

output "output_security_hub_id" {
  value       = aws_securityhub_account.security_hub.id
  description = "AWS Security Hub ID"
}

output "output_security_hub_arn" {
  value       = aws_securityhub_account.security_hub.arn
  description = "AWS Security Hub ARN"
}