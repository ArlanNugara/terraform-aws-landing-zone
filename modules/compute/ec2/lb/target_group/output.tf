// Load Balancer Taget Group Output

output "output_lb_tg_id" {
  value       = aws_lb_target_group.lb_tg.id
  description = "Load Balancer Target Group ID"
}

output "output_lb_tg_arn" {
  value       = aws_lb_target_group.lb_tg.arn
  description = "Load Balancer Target Group ARN"
}