// IAM User

resource "aws_iam_user" "user" {
  name          = var.user_name
  path          = var.user_path
  force_destroy = true
  tags = merge(
    {
      Name = var.user_name
    },
    var.default_tags
  )
}
