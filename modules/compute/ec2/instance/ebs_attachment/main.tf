// EBS Volume Attachment

resource "aws_volume_attachment" "ebs_attachment" {
  device_name                    = var.ebs_device_name
  volume_id                      = var.ebs_id
  instance_id                    = var.instance_id
  force_detach                   = false
  stop_instance_before_detaching = true
  skip_destroy                   = true
}