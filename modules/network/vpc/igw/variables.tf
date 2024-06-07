// Internet Gateway Variables

variable "igw_name" {
  type        = string
  description = "Internet Gateway Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}