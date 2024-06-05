// Organization Policy Output

output "output_policy_id" {
  value       = aws_organizations_policy.policy.id
  description = "Organization Policy ID"
}

output "output_policy_arn" {
  value       = aws_organizations_policy.policy.arn
  description = "Organization Policy ARN"
}