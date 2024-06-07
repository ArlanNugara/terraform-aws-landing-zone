// IAM Role

resource "aws_iam_role" "role" {
  name                  = var.role_name
  description           = var.role_description
  force_detach_policies = true
  assume_role_policy    = var.role_policy
  tags = merge(
    {
      Name = var.role_name
    },
    var.default_tags
  )
}