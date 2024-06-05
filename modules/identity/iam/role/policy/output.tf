// IAM Role Policy Output

output "output_iam_role_policy_id" {
  value       = aws_iam_role_policy.role_policy.id
  description = "IAM Policy ID"
}

output "output_iam_role_policy_name" {
  value       = aws_iam_role_policy.role_policy.name
  description = "IAM Policy Name"
}