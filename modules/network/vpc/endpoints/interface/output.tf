// VPC Endpoint Interface Type Output

output "output_vpc_endpoint_interface_id" {
  value       = aws_vpc_endpoint.vpc_endpoint_interface.id
  description = "VPC Endpoint Interface Type ID"
}

output "output_vpc_endpoint_interface_arn" {
  value       = aws_vpc_endpoint.vpc_endpoint_interface.arn
  description = "VPC Endpoint Interface Type ARN"
}