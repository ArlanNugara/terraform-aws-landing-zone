// IAM Group User Membership

resource "aws_iam_group_membership" "membership" {
  name  = var.membership_name
  users = var.user_names
  group = var.group_name
}
