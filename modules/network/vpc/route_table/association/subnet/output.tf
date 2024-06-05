// Route Table Subnet Association Output

output "output_rt_snet_association_id" {
  value       = aws_route_table_association.rt_snet_association.id
  description = "Route Table Subnet Association ID"
}