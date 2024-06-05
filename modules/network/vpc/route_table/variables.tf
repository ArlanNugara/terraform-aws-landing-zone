// Route Table Variables

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "rt_tags" {
  type        = map(string)
  description = "Route Table Tags"
}