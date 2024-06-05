// Security Hub Member Account

resource "aws_securityhub_member" "sh_member_account" {
  account_id = var.sh_member_account_id
  email      = var.sh_member_account_email
  invite     = var.sh_member_account_invitation
}