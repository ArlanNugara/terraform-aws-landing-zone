// Public NAT Gateway Variables

variable "natgw_name" {
  type        = string
  description = "NAT Gateway Name"
}

variable "eip_id" {
  type        = string
  description = "Elastic IP ID"
}

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}