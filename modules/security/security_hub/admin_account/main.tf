// Security Hub Admin Account

resource "aws_securityhub_organization_admin_account" "sh_admin_account" {
  admin_account_id = var.security_hub_admin_account_id
}