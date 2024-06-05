// VPC Endpoint Interface Type Variables

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

variable "vpc_endpoint_interface_tags" {
  type        = map(string)
  description = "VPC Endpoint Interface Type Tags"
}