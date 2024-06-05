// Network Access Control List

resource "aws_network_acl" "nacl" {
  vpc_id     = var.vpc_id
  subnet_ids = var.nacl_subnet_ids
  tags       = var.nacl_tags
}