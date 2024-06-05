// Route Table INternet Gateway Association Output

output "output_rt_igw_association_id" {
  value       = aws_route_table_association.rt_igw_association.id
  description = "Route Table Internet Gateway Association ID"
}