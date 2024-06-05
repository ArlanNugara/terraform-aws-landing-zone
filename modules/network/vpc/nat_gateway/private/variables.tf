// Private NAT Gateway Variables

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "private_natgw_tags" {
  type        = map(string)
  description = "Private NAT Gateway Tags"
}