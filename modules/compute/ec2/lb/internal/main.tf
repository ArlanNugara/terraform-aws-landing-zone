// Internal Load Balancer

resource "aws_lb" "lb_internal" {
  name               = var.lb_name
  internal           = true
  load_balancer_type = "network"
  tags               = var.lb_internal_tags
  subnet_mapping {
    subnet_id = var.lb_snet_id
  }
}