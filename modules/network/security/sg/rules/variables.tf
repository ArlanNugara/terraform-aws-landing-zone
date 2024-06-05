// Security Group Rules Variables

variable "sg_id" {
  type        = string
  description = "Security Group ID"
}

variable "sg_rule_type" {
  type        = string
  description = "Security Group Rule Type"
  default     = "ingress"
}

variable "sg_rule_from_port" {
  type        = number
  description = "Security Group Rule From Port Number"
}

variable "sg_rule_to_port" {
  type        = number
  description = "Security Group Rule To Port Number"
}

variable "sg_rule_protocol" {
  type        = string
  description = "Security Group Rule Protocol"
  default     = "tcp"
}

variable "sg_rule_cidr_block" {
  type        = list(string)
  description = "Security Group CIDR Blocks"
}