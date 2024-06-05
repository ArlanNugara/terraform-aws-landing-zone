// Internal Load Balancer Output

output "output_internal_lb_id" {
  value       = aws_lb.lb_internal.id
  description = "Load Balancer ID"
}

output "output_internal_lb_arn" {
  value       = aws_lb.lb_internal.arn
  description = "Load Balancer ARN"
}