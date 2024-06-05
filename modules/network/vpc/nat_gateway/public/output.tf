// Public NAT Gateway Output

output "output_public_natgw_id" {
  value       = aws_nat_gateway.public_natgw.id
  description = "Public NAT Gateway ID"
}

output "output_public_natgw_eip" {
  value       = aws_nat_gateway.public_natgw.public_ip
  description = "Public NAT Gateway Elastic IP"
}