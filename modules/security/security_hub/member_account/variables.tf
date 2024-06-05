// Security Hub Member Account Variables

variable "sh_member_account_id" {
  type        = string
  description = "Security Hub Member Account ID"
}

variable "sh_member_account_email" {
  type        = string
  description = "Security Hub Member Account Email Address"
  default     = null
}

variable "sh_member_account_invitation" {
  type        = bool
  description = "Security Hub Member Account Email Invitation"
  default     = false
}