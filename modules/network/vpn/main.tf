// VPN Gateway

resource "aws_vpn_gateway" "vpngw" {
  vpc_id            = var.vpc_id
  availability_zone = var.vpngw_az
  tags = merge(
    {
      Name = var.vpngw_name
    },
    var.default_tags
  )
}