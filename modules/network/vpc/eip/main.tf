// Elastic IP Address

resource "aws_eip" "eip" {
  tags = merge(
    {
      Name = var.eip_name
    },
    var.default_tags
  )
}