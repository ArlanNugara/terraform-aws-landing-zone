// External Load Balancer

resource "aws_lb" "lb_external" {
  name               = var.lb_name
  load_balancer_type = "network"
  tags = merge(
    {
      Name = var.lb_name
    },
    var.default_tags
  )
  subnet_mapping {
    subnet_id     = var.lb_snet_id
    allocation_id = var.lb_eip_id
  }
}