// Private NAT Gateway

resource "aws_nat_gateway" "private_natgw" {
  connectivity_type = "private"
  subnet_id         = var.snet_id
  tags = merge(
    {
      Name = var.natgw_name
    },
    var.default_tags
  )
}