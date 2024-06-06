// Network Firewall Variables

variable "fw_name" {
  type        = string
  description = "Firewall Name"
}

variable "fw_delete_protection" {
  type        = bool
  description = "Firewall Delete Protection"
  default     = false
}

variable "fw_policy_change_protection" {
  type        = bool
  description = "Firewall Policy Change Protection"
  default     = false
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "fw_snet_change_protection" {
  type        = bool
  description = "Firewall Subnet Change Protection"
  default     = false
}

variable "snet_id" {
  type        = string
  description = "Subnet ID"
}

variable "targets" {
  type        = list(string)
  description = "Firewall Targets"
}

variable "fw_tags" {
  type        = map(string)
  description = "Firewall Tags"
}