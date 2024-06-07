// Accounts

resource "aws_organizations_account" "account" {
  name              = var.ac_name
  email             = var.ac_email
  close_on_deletion = true
  parent_id         = var.ac_parent_id
  tags = merge(
    {
      Name = var.ac_name
    },
    var.default_tags
  )
}