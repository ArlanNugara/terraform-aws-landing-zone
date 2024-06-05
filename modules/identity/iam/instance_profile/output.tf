// IAM Instance Profile Output

output "output_iam_instance_profile_id" {
  value       = aws_iam_instance_profile.instance_profile.id
  description = "Instance Profile ID"
}

output "output_iam_instance_profile_arn" {
  value       = aws_iam_instance_profile.instance_profile.arn
  description = "Instance Profile ARN"
}

output "output_iam_instance_profile_unique_id" {
  value       = aws_iam_instance_profile.instance_profile.unique_id
  description = "Instance Profile Unique ID"
}

output "output_iam_instance_profile_name" {
  value       = aws_iam_instance_profile.instance_profile.name
  description = "Instance Profile Name"
}