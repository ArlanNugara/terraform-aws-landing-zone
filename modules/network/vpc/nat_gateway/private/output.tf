// Private NAT Gateway Output

output "output_private_natgw_id" {
  value       = aws_nat_gateway.private_natgw.id
  description = "Private NAT Gateway ID"
}

output "output_private_natgw_ip" {
  value       = aws_nat_gateway.private_natgw.private_ip
  description = "Private NAT Gateway Private IP"
}