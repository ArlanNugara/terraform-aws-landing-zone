// Organizational Unit

resource "aws_organizations_organizational_unit" "ou" {
  name      = var.ou_name
  parent_id = var.ou_parent_id
  tags = merge(
    {
      Name = var.ou_name
    },
    var.default_tags
  )
}
