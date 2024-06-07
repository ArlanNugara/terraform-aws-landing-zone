// VPC Peering Variables

variable "peering_name" {
  type        = string
  description = "VPC Peering Name"
}

variable "remote_vpc_id" {
  type        = string
  description = "Remote VPC ID"
}

variable "source_vpc_id" {
  type        = string
  description = "Source VPC ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}