// VPC DHCP Option Output

output "output_vpc_dhcp_id" {
  value       = aws_vpc_dhcp_options.vpc_dhcp.id
  description = "VPC DHCP Option ID"
}

output "output_vpc_dhcp_arn" {
  value       = aws_vpc_dhcp_options.vpc_dhcp.arn
  description = "VPC DHCP Option ARN"
}