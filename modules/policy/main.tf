// Organization Policy

resource "aws_organizations_policy" "policy" {
  name        = var.policy_name
  description = var.policy_description
  content     = var.policy_content
  type        = var.policy_type
  tags        = var.policy_tags
}

resource "aws_organizations_policy_attachment" "attachment" {
  policy_id = aws_organizations_policy.policy.id
  target_id = var.target_id
}