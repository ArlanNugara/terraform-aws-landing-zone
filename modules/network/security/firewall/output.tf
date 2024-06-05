// Network Firewall Output

output "output_fw_id" {
  value       = aws_networkfirewall_firewall.firewall.id
  description = "Firewall ID"
}

output "output_fw_arn" {
  value       = aws_networkfirewall_firewall.firewall.arn
  description = "Firewall ARN"
}

output "output_fw_status" {
  value       = aws_networkfirewall_firewall.firewall.firewall_status
  description = "Firewall Status"
}