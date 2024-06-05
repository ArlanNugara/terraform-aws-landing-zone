// Security Group Rules

resource "aws_security_group_rule" "sg_rules" {
  security_group_id = var.sg_id
  type              = var.sg_rule_type
  from_port         = var.sg_rule_from_port
  to_port           = var.sg_rule_to_port
  protocol          = var.sg_rule_protocol
  cidr_blocks       = var.sg_rule_cidr_block
}