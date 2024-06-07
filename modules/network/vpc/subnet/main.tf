// VPC Subnet

resource "aws_subnet" "snet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.snet_address_space
  map_public_ip_on_launch = var.snet_pip
  availability_zone       = var.snet_az
  tags = merge(
    {
      Name = var.snet_name
    },
    var.default_tags
  )
}