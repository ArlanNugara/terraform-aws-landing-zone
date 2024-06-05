// EBS Volume Attachment Variables

variable "ebs_device_name" {
  type        = string
  description = "EBS Device Name"
  default     = "/dev/xvdh"
}

variable "ebs_id" {
  type        = string
  description = "EBS ID"
}

variable "instance_id" {
  type        = string
  description = "Instance ID"
}