// Private NAT Gateway Variables

variable "natgw_name" {
  type        = string
  description = "NAT Gateway Name"
}

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}