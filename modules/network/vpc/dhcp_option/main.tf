// VPC DHCP Option

resource "aws_vpc_dhcp_options" "vpc_dhcp" {
  domain_name_servers = var.vpc_dhcp_dns
  ntp_servers         = var.vpc_dhcp_ntp
  tags = merge(
    {
      Name = var.dhcp_option_name
    },
    var.default_tags
  )
}