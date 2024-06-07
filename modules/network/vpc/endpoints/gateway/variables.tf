// VPC Endpoint Gateway Type Variables

variable "endpoint_name" {
  type        = string
  description = "VPC Endpoint Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "vpc_endpoint_service" {
  type        = string
  description = "VPC Endpoint Service ID"
}

variable "rt_id" {
  type        = list(string)
  description = "Route Table ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}