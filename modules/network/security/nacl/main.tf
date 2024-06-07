// Network Access Control List

resource "aws_network_acl" "nacl" {
  vpc_id     = var.vpc_id
  subnet_ids = var.nacl_subnet_ids
  tags = merge(
    {
      Name = var.nacl_name
    },
    var.default_tags
  )
}