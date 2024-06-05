// VPC Peering Variables

variable "remote_vpc_id" {
  type        = string
  description = "Remote VPC ID"
}

variable "source_vpc_id" {
  type        = string
  description = "Source VPC ID"
}