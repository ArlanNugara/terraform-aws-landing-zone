// Load Balancer Taget Group

resource "aws_lb_target_group" "lb_tg" {
  name                              = var.lb_tg_name
  port                              = var.lb_tg_port
  protocol                          = var.lb_tg_protocol
  protocol_version                  = var.lb_tg_protocol_version
  target_type                       = var.lb_tg_target_type
  load_balancing_algorithm_type     = var.lb_tg_algo_type
  ip_address_type                   = var.lb_tg_address_type
  load_balancing_cross_zone_enabled = var.lb_tg_cross_zone
  preserve_client_ip                = var.lb_tg_preserve_client_ip
  vpc_id                            = var.vpc_id
  tags = merge(
    {
      Name = var.lb_tg_name
    },
    var.default_tags
  )
  health_check {
    path     = var.lb_tg_hc_path
    protocol = var.lb_tg_hc_protocol
  }
}