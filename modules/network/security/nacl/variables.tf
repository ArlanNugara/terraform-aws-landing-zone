// Network Access Control List Variables

variable "nacl_name" {
  type        = string
  description = "NACL Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "nacl_subnet_ids" {
  type        = list(string)
  description = "Subnet IDs"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}