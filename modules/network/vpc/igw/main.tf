// Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = merge(
    {
      Name = var.igw_name
    },
    var.default_tags
  )
}