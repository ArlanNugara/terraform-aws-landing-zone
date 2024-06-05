// Public NAT Gateway

resource "aws_nat_gateway" "public_natgw" {
  connectivity_type = "public"
  allocation_id     = var.eip_id
  subnet_id         = var.snet_id
  tags              = var.public_natgw_tags
}