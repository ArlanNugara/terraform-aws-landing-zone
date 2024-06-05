// VPC Endpoint Gateway Type Variables

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

variable "vpc_endpoint_gateway_tags" {
  type        = map(string)
  description = "VPC Endpoint Gateway Type Tags"
}