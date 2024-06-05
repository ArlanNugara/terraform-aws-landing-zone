// VPN Gateway Variables

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "vpngw_az" {
  type        = string
  description = "VPN Gateway Availability Zone"
  default     = "us-east-1a"
}

variable "vpngw_tags" {
  type        = map(string)
  description = "VPN Gateway Tags"
}