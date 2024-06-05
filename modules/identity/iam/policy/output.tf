// IAM Policy Output

output "output_iam_policy_id" {
  value       = aws_iam_policy.policy.id
  description = "IAM Policy ID"
}

output "output_iam_policy_arn" {
  value       = aws_iam_policy.policy.arn
  description = "IAM Policy ARN"
}