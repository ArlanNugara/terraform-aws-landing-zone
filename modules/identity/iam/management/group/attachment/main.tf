// IAM Group Policy Attachment

resource "aws_iam_group_policy_attachment" "policy_attachment" {
  policy_arn = var.policy_arn
  group      = var.group_name
}