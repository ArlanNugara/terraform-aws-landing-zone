// Security Hub Variables

variable "security_hub_standards" {
  type        = bool
  description = "AWS Security Hub Enable Security Sandards"
  default     = true
}

variable "security_hub_findings" {
  type        = string
  description = "AWS Security Hub Control Finding Generator"
  default     = "STANDARD_CONTROL"
}

variable "security_hub_controls" {
  type        = bool
  description = "AWS Security Hub Enable Controls"
  default     = true
}