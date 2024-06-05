// VPC Peering

resource "aws_vpc_peering_connection" "vpc_pering" {
  peer_vpc_id = var.remote_vpc_id
  vpc_id      = var.source_vpc_id
}