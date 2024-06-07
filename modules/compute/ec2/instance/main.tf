// EC2 Instance

resource "aws_instance" "instance" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.instance_eip
  availability_zone           = var.instance_az
  ebs_optimized               = var.instance_ebs
  iam_instance_profile        = var.instance_iam
  key_name                    = var.key_pair_name
  subnet_id                   = var.snet_id
  vpc_security_group_ids      = var.sg_ids
  tags = merge(
    {
      Name = var.instance_name
    },
    var.default_tags
  )
}