// Elastic Block Storage Variables

variable "ebs_az" {
  type        = string
  description = "EBS Availability Zone"
  default     = "us-east-1a"
}

variable "ebs_size" {
  type        = number
  description = "EBS Size in GB"
  default     = 100
}

variable "ebs_encryption" {
  type        = bool
  description = "EBS Encryption"
  default     = true
}

variable "ebs_type" {
  type        = string
  description = "EBS Type"
  default     = "gp3"
}

variable "ebs_iops" {
  type        = number
  description = "EBS IOPS"
  default     = null
}

variable "ebs_tags" {
  type        = map(string)
  description = "EBS Tags"
}