// IAM Instance Profile

resource "aws_iam_instance_profile" "instance_profile" {
  name = var.instance_profile_name
  role = var.role_name
  path = var.instance_profile_path
  tags = merge(
    {
      Name = var.instance_profile_name
    },
    var.default_tags
  )
}