// VPC Endpoint Interface Type

resource "aws_vpc_endpoint" "vpc_endpoint_interface" {
  vpc_id              = var.vpc_id
  service_name        = var.vpc_endpoint_service
  vpc_endpoint_type   = "Interface"
  subnet_ids          = var.snet_id
  security_group_ids  = var.sg_id
  ip_address_type     = "ipv4"
  private_dns_enabled = var.vpc_endpoint_interface_dns
  tags                = var.vpc_endpoint_interface_tags
}