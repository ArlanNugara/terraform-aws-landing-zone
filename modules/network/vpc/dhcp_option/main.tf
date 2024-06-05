// VPC DHCP Option

resource "aws_vpc_dhcp_options" "vpc_dhcp" {
  domain_name_servers = var.vpc_dhcp_dns
  ntp_servers         = var.vpc_dhcp_ntp
  tags                = var.vpc_dhcp_tags
}