// Network ACL Rules Variables

variable "nacl_id" {
  type        = string
  description = "NACl ID"
}

variable "nacl_rule_number" {
  type        = number
  description = "NACl Rule Number"
}

variable "nacl_rule_egress" {
  type        = bool
  description = "NACl Rule Egress"
  default     = false
}

variable "nacl_rule_protocol" {
  type        = string
  description = "NACl Rule Protocol"
  default     = "tcp"

}

variable "nacl_rule_action" {
  type        = string
  description = "NACl Rule Action"
  default     = "deny"
}

variable "nacl_rule_cidr" {
  type        = string
  description = "NACl Rule CIDR"
}

variable "nacl_rule_from_port" {
  type        = number
  description = "NACl Rule From Port Number"
}

variable "nacl_rule_to_port" {
  type        = number
  description = "NACl Rule To Port Number"
}