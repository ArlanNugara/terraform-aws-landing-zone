// Security Group Variables

variable "sg_name" {
  type        = string
  description = "Security Group Name"
}

variable "sg_description" {
  type        = string
  description = "Security Group Description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}