// Security Group Output

output "output_sg_id" {
  value       = aws_security_group.sg.id
  description = "Security Group ID"
}

output "output_sg_arn" {
  value       = aws_security_group.sg.arn
  description = "Security Group ARN"
}

output "output_sg_name" {
  value       = aws_security_group.sg.name
  description = "Security Group Name"
}