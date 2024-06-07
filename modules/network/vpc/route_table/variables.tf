// Route Table Variables

variable "rt_name" {
  type        = string
  description = "Route Table name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}