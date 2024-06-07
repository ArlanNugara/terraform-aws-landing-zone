// Customer Gateway

resource "aws_customer_gateway" "custgw" {
  device_name = var.custgw_device_name
  bgp_asn     = var.custgw_bgp_asn
  ip_address  = var.custgw_ip
  type        = "ipsec.1"
  tags = merge(
    {
      Name = var.custgw_device_name
    },
    var.default_tags
  )
}