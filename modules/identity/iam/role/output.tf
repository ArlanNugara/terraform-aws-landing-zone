// IAM Role Output

output "output_iam_role_id" {
  value       = aws_iam_role.role.id
  description = "IAM Role ID"
}

output "output_iam_role_arn" {
  value       = aws_iam_role.role.arn
  description = "IAM Role ARN"
}

output "output_iam_role_name" {
  value       = aws_iam_role.role.name
  description = "IAM Role Name"
}

output "output_iam_role_unique_id" {
  value       = aws_iam_role.role.unique_id
  description = "IAM Role Unique ID"
}