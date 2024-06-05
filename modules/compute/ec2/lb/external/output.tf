// External Load Balancer Output

output "output_external_lb_id" {
  value       = aws_lb.lb_external.id
  description = "Load Balancer ID"
}

output "output_external_lb_arn" {
  value       = aws_lb.lb_external.arn
  description = "Load Balancer ARN"
}