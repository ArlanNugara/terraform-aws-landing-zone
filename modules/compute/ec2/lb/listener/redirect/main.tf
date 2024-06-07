// Load Balancer Redirect Listener

resource "aws_lb_listener" "lb_list" {
  load_balancer_arn = var.lb_arn
  port              = var.lb_list_port
  protocol          = var.lb_list_protocol
  tags = merge(
    {
      Name = var.listener_name
    },
    var.default_tags
  )
  default_action {
    type             = "redirect"
    target_group_arn = var.lb_tg_arn
    redirect {
      path        = var.lb_list_redirect_path
      protocol    = var.lb_list_redirect_protocol
      port        = var.lb_list_redirect_port
      status_code = var.lb_list_redirect_status_code
    }
  }
}