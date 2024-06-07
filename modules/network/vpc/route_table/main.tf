// Route Table

resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id
  tags = merge(
    {
      Name = var.rt_name
    },
    var.default_tags
  )
}