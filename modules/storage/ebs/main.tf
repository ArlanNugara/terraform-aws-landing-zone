// Elastic Block Storage

resource "aws_ebs_volume" "ebs" {
  availability_zone = var.ebs_az
  size              = var.ebs_size
  encrypted         = var.ebs_encryption
  type              = var.ebs_type
  iops              = var.ebs_iops
  tags = merge(
    {
      Name = var.ebs_name
    },
    var.default_tags
  )
}