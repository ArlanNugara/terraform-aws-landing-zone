// IAM User Group Membership

resource "aws_iam_user_group_membership" "membership" {
  user   = var.user_name
  groups = var.group_names
}
