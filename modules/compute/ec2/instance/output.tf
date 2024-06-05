// EC2 Instance Output

output "output_instance_id" {
  value       = aws_instance.instance.id
  description = "Instance ID"
}

output "output_instance_arn" {
  value       = aws_instance.instance.arn
  description = "Instance ARN"
}

output "output_instance_ip" {
  value       = aws_instance.instance.private_ip
  description = "Instance Private IP"
}