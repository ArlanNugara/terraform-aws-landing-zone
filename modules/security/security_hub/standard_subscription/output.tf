// Security Hub Standard Subscription Output

output "output_sh_standard_subscription_arn" {
  value       = aws_securityhub_standards_subscription.sh_standard_subscription.id
  description = "Security Hub Standard Subscription ARN"
}