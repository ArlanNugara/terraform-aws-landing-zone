// Config Rule

resource "aws_config_config_rule" "config_rule" {
  name = var.config_rule_name
  tags = merge(
    {
      Name = var.config_rule_name
    },
    var.default_tags
  )
  source {
    owner             = var.config_rule_source_owner
    source_identifier = var.config_rule_source_identifier
  }
}