// Network ACL Rules

resource "aws_network_acl_rule" "nacl_rules" {
  network_acl_id = var.nacl_id
  rule_number    = var.nacl_rule_number
  egress         = var.nacl_rule_egress
  protocol       = var.nacl_rule_protocol
  rule_action    = var.nacl_rule_action
  cidr_block     = var.nacl_rule_cidr
  from_port      = var.nacl_rule_from_port
  to_port        = var.nacl_rule_to_port
}