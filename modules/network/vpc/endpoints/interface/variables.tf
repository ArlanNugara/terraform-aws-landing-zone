// VPC Endpoint Interface Type Variables

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

variable "snet_id" {
  type        = list(string)
  description = "Subnet ID"
}

variable "sg_id" {
  type        = list(string)
  description = "Security Group ID"
}

variable "vpc_endpoint_interface_dns" {
  type        = bool
  description = "VPC Endpoint Interface Type Private DNS"
  default     = true
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}