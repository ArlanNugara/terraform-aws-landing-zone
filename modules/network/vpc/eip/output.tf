// Elastic IP Adddress Output

output "output_eip_allocation_id" {
  value       = aws_eip.eip.allocation_id
  description = "Elastic IP Address Allocation ID"
}

output "output_eip_address" {
  value       = aws_eip.eip.public_ip
  description = "Elastic IP Address"
}

output "output_eip_id" {
  value       = aws_eip.eip.id
  description = "Elastic IP ID"
}