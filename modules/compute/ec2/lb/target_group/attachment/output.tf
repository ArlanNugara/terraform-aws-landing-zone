// Load Balancer Target Group Attachment Output

output "output_lb_tg_attachment_id" {
  value       = aws_lb_target_group_attachment.lb_tg_attachment.id
  description = "Load balancer Target group Attachment ID"
}