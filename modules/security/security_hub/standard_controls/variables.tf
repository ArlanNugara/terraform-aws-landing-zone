// Security Hub Standard Controls Variables

variable "sh_standard_control_arn" {
  type        = string
  description = "Security Hub Standard Control ARN"
}

variable "sh_standard_control_status" {
  type        = string
  description = "Security Hub Standard Control Status"
  default     = "ENABLED"
}

variable "sh_standard_control_disable_reason" {
  type        = string
  description = "Security Hub Standard Control Disable Reason"
  default     = null
}