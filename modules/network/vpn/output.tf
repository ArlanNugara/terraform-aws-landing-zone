// VPN Gateway Output

output "output_vpngw_id" {
  value       = aws_vpn_gateway.vpngw.id
  description = "VPN Gateway ID"
}

output "output_vpngw_arn" {
  value       = aws_vpn_gateway.vpngw.arn
  description = "VPN Gateway ARN"
}