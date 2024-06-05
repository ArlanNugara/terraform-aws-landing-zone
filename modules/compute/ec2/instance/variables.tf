// EC2 Instance Variables

variable "instance_ami" {
  type        = string
  description = "Instance AMI"
  default     = "ami-0ceef54df6e1f48a1"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t3.medium"
}

variable "instance_eip" {
  type        = bool
  description = "Instance Public IP"
  default     = false
}

variable "instance_az" {
  type        = string
  description = "Instance Availability Zone"
  default     = "us-east-1a"
}

variable "instance_ebs" {
  type        = bool
  description = "Instance EBS Optimized Volume"
  default     = true
}

variable "instance_iam" {
  type        = string
  description = "Instance IAM Profile"
}

variable "key_pair_name" {
  type        = string
  description = "Instance Key Pair Name"
}

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "sg_ids" {
  type        = list(string)
  description = "Security Group IDs"
}

variable "instance_tags" {
  type        = map(string)
  description = "Instance Tags"
}