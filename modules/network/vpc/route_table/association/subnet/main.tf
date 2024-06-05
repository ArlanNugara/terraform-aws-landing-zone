// Route Table Subnet Association

resource "aws_route_table_association" "rt_snet_association" {
  subnet_id      = var.snet_id
  route_table_id = var.rt_id
}