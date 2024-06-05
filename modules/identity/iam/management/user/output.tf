// IAM User Output

output "output_iam_user_id" {
  value       = aws_iam_user.user.id
  description = "User ID"
}

output "output_iam_user_arn" {
  value       = aws_iam_user.user.arn
  description = "User ARN"
}

output "output_iam_user_name" {
  value       = aws_iam_user.user.name
  description = "User Name"
}

output "output_iam_user_unique_id" {
  value       = aws_iam_user.user.unique_id
  description = "User Unique ID"
}