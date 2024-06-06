// Network Firewall

resource "aws_networkfirewall_rule_group" "rule_group" {
  capacity = 10
  name     = "${var.fw_name}-rg"
  type     = "STATEFUL"
  rule_group {
    rules_source {
      rules_source_list {
        generated_rules_type = "DENYLIST"
        target_types         = ["HTTP_HOST"]
        targets              = var.targets
      }
    }
  }

  tags = var.fw_tags
}

resource "aws_networkfirewall_firewall_policy" "firewall_policy" {
  name = "${var.fw_name}-policy"
  firewall_policy {
    stateless_default_actions          = ["aws:pass"]
    stateless_fragment_default_actions = ["aws:drop"]
    stateful_rule_group_reference {
      resource_arn = aws_networkfirewall_rule_group.rule_group.arn
    }
  }
  tags = var.fw_tags
}


resource "aws_networkfirewall_firewall" "firewall" {
  name                              = var.fw_name
  delete_protection                 = var.fw_delete_protection
  firewall_policy_arn               = aws_networkfirewall_firewall_policy.firewall_policy.arn
  firewall_policy_change_protection = var.fw_policy_change_protection
  vpc_id                            = var.vpc_id
  subnet_change_protection          = var.fw_snet_change_protection
  tags                              = var.fw_tags
  subnet_mapping {
    subnet_id = var.snet_id
  }
}