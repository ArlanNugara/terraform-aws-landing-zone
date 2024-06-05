// VPC Subnet Output

output "output_snet_id" {
  value       = aws_subnet.snet.id
  description = "Subnet ID"
}

output "output_snet_arn" {
  value       = aws_subnet.snet.arn
  description = "Subnet ARN"
}