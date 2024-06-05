// Route Table Internet Gateway Association

resource "aws_route_table_association" "rt_igw_association" {
  gateway_id     = var.igw_id
  route_table_id = var.rt_id
}