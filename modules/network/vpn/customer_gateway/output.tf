// Customer Gateway Output

output "output_custgw_id" {
  value       = aws_customer_gateway.custgw.id
  description = "Customer Gateway ID"
}

output "output_custgw_arn" {
  value       = aws_customer_gateway.custgw.arn
  description = "Customer Gateway ARN"
}