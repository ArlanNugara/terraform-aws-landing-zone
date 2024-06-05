// Application Load Balancer Variables

output "outout_app_lb_id" {
  value       = aws_lb.lb_app.id
  description = "Application Load Balancer ID"
}

output "outout_app_lb_arn" {
  value       = aws_lb.lb_app.arn
  description = "Application Load Balancer ARN"
}