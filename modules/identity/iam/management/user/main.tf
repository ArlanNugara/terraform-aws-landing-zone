// IAM User

resource "aws_iam_user" "user" {
  name          = var.user_name
  path          = var.user_path
  force_destroy = true
  tags          = var.user_tags
}
