// IAM Group Policy Attachment Variables

variable "policy_arn" {
  type        = string
  description = "IAM Policy ARN"
}

variable "group_name" {
  type        = string
  description = "IAM Group Name"
}