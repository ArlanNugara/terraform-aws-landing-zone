// Load Balancer Redirect Listener Output

output "output_lb_list_id" {
  value       = aws_lb_listener.lb_list.id
  description = "Load Balancer Listener ID"
}

output "output_lb_list_arn" {
  value       = aws_lb_listener.lb_list.arn
  description = "Load Balancer Listener ARN"
}