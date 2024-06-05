// VPC Endpoint Gateway Type Output

output "output_vpc_endpoint_gateway_id" {
  value       = aws_vpc_endpoint.vpc_endpoint_gateway.id
  description = "VPC Endpoint Gateway Type ID"
}

output "output_vpc_endpoint_gateway_arn" {
  value       = aws_vpc_endpoint.vpc_endpoint_gateway.arn
  description = "VPC Endpoint Gateway Type ARN"
}