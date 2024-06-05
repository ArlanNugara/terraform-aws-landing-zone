// Config Rule

resource "aws_config_config_rule" "config_rule" {
  name = var.config_rule_name
  tags = var.config_rule_tags
  source {
    owner             = var.config_rule_source_owner
    source_identifier = var.config_rule_source_identifier
  }
}