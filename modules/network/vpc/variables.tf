// VPC Variables

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "vpc_address" {
  type        = string
  description = "VPC Address Space"
}

variable "vpc_tenacy" {
  type        = string
  description = "VPC Tenacy"
  default     = "default"
}

variable "vpc_dns_support" {
  type        = bool
  description = "VPC DNS Support"
  default     = true
}

variable "vpc_dns_hostname" {
  type        = bool
  description = "VPC DNS Hostname"
  default     = true
}

variable "vpc_usage_metrics" {
  type        = bool
  description = "VPC Usage Metrics"
  default     = true
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}