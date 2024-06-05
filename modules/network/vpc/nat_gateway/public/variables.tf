// Public NAT Gateway Variables

variable "eip_id" {
  type        = string
  description = "Elastic IP ID"
}

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "public_natgw_tags" {
  type        = map(string)
  description = "Public NAT Gateway Tags"
}