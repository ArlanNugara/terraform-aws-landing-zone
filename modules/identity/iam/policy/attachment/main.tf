// IAM Policy Attachment

resource "aws_iam_policy_attachment" "policy_attach" {
  name       = var.policy_attach_name
  policy_arn = var.policy_arn
  users      = var.user_name
  roles      = var.role_name
  groups     = var.group_name
}