// Load Balancer Forward Listener

resource "aws_lb_listener" "lb_list" {
  load_balancer_arn = var.lb_arn
  port              = var.lb_list_port
  protocol          = var.lb_list_protocol
  tags              = var.lb_list_tags
  default_action {
    type             = "forward"
    target_group_arn = var.lb_tg_arn
  }
}