// VPN Connection Output

output "ouput_vpn_conn_id" {
  value       = aws_vpn_connection.vpn_conn.id
  description = "VPN Connection ID"
}

output "ouput_vpn_conn_arn" {
  value       = aws_vpn_connection.vpn_conn.arn
  description = "VPN Connection ARN"
}