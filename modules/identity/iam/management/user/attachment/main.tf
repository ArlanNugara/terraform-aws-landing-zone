// IAM User Policy Attachment

resource "aws_iam_user_policy_attachment" "policy_attachment" {
  policy_arn = var.policy_arn
  user       = var.user_name
}