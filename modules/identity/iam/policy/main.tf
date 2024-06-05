// IAM Policy

resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  path        = var.policy_path
  description = var.policy_description
  policy      = var.policy
  tags        = var.policy_tags
}