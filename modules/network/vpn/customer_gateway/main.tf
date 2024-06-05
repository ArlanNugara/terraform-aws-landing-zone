// Customer Gateway

resource "aws_customer_gateway" "custgw" {
  device_name = var.custgw_device_name
  bgp_asn     = var.custgw_bgp_asn
  ip_address  = var.custgw_ip
  type        = "ipsec.1"
  tags        = var.custgw_tags
}