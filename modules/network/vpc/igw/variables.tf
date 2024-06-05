// Internet Gateway Variables

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "igw_tags" {
  type        = map(string)
  description = "Internet Gateway Tags"
}