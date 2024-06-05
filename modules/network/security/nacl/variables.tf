// Network Access Control List Variables

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "nacl_subnet_ids" {
  type        = list(string)
  description = "Subnet IDs"
}

variable "nacl_tags" {
  type        = map(string)
  description = "Network ACL Tags"
}