// Route Table Route Output

output "output_rt_route_id" {
  value       = aws_route.rt_route.id
  description = "Route Table Route ID"
}