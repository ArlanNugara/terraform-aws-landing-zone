// VPN Gateway Variables

variable "vpngw_name" {
  type        = string
  description = "VPN Gateway Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "vpngw_az" {
  type        = string
  description = "VPN Gateway Availability Zone"
  default     = "us-east-1a"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}