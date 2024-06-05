// Elastic IP Address

resource "aws_eip" "eip" {
  tags = var.eip_tags
}