// VPC DHCP Option Association

resource "aws_vpc_dhcp_options_association" "vpc_dhcp_association" {
  vpc_id          = var.vpc_id
  dhcp_options_id = var.vpc_dhcp_id
}