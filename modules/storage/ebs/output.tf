// Elastic Block Storage Output

output "output_ebs_id" {
  value       = aws_ebs_volume.ebs.id
  description = "EBS ID"
}

output "output_ebs_arn" {
  value       = aws_ebs_volume.ebs.arn
  description = "EBS ARN"
}