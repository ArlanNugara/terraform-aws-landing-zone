// EBS Volume Attachment Output

output "output_ebs_attachment_id" {
  value       = aws_volume_attachment.ebs_attachment.id
  description = "EBS Volume Attachment ID"
}

output "output_ebs_volume_id" {
  value       = aws_volume_attachment.ebs_attachment.volume_id
  description = "EBS Volume ID"
}