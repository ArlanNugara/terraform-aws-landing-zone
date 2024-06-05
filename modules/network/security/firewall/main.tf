// Network Firewall

resource "aws_networkfirewall_firewall" "firewall" {
  name                              = var.fw_name
  delete_protection                 = var.fw_delete_protection
  firewall_policy_arn               = var.fw_policy_arn
  firewall_policy_change_protection = var.fw_policy_change_protection
  vpc_id                            = var.vpc_id
  subnet_change_protection          = var.fw_snet_change_protection
  tags                              = var.fw_tags
  subnet_mapping {
    subnet_id = var.snet_id
  }
}