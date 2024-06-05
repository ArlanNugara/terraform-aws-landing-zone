// Route Table Route

resource "aws_route" "rt_route" {
  route_table_id         = var.rt_id
  destination_cidr_block = var.rt_route_dest_cidr
  gateway_id             = var.igw_id
}