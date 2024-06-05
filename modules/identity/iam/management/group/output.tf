// IAM Group Output

output "output_iam_group_id" {
  value       = aws_iam_group.group.id
  description = "Group ID"
}

output "output_iam_group_arn" {
  value       = aws_iam_group.group.arn
  description = "Group ARN"
}

output "output_iam_group_name" {
  value       = aws_iam_group.group.name
  description = "Group Name"
}

output "output_iam_group_unique_id" {
  value       = aws_iam_group.group.unique_id
  description = "Group Unique ID"
}