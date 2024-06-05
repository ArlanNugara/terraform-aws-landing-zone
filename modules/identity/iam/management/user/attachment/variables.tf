// IAM User Policy Attachment Variables

variable "policy_arn" {
  type        = string
  description = "IAM Policy ARN"
}

variable "user_name" {
  type        = string
  description = "IAM User Name"
}