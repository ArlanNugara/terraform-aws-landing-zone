// VPC DHCP Option Association Output

output "output_vpc_dhcp_association_id" {
  value       = aws_vpc_dhcp_options_association.vpc_dhcp_association.id
  description = "VPC DHCP Option Association ID"
}