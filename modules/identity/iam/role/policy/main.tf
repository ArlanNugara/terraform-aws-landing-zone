// IAM Role Policy

resource "aws_iam_role_policy" "role_policy" {
  name   = var.role_policy_name
  role   = var.role_id
  policy = var.iam_role_policy
}