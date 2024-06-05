// Route Table Output

output "output_rt_id" {
  value       = aws_route_table.rt.id
  description = "Route Table ID"
}

output "output_rt_arn" {
  value       = aws_route_table.rt.arn
  description = "Route Table ARN"
}