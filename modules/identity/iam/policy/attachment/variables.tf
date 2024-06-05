// IAM Policy Attachment Variables

variable "policy_attach_name" {
  type        = string
  description = "IAM Policy Attachment Name"
}

variable "policy_arn" {
  type        = string
  description = "IAM Policy ARN"
}

variable "user_name" {
  type        = list(string)
  description = "IAM Policy ARN"
  default     = null
}

variable "role_name" {
  type        = list(string)
  description = "IAM Policy ARN"
  default     = null
}

variable "group_name" {
  type        = list(string)
  description = "IAM Policy ARN"
  default     = null
}