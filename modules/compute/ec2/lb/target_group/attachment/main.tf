// Load Balancer Target Group Attachment

resource "aws_lb_target_group_attachment" "lb_tg_attachment" {
  target_group_arn = var.lb_tg_arn
  target_id        = var.lb_tg_attachment_target_id
  port             = var.lb_tg_attachment_port
}