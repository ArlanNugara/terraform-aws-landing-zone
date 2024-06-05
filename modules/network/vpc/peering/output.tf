// VPC Peering Output

output "output_vpc_peering_id" {
  value       = aws_vpc_peering_connection.vpc_pering.id
  description = "VPC Peering ID"
}