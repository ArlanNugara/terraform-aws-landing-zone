// IAM Role Policy Variables

variable "role_policy_name" {
  type        = string
  description = "IAM Role Policy Name"
}

variable "role_id" {
  type        = string
  description = "IAM Role ID"
}

variable "iam_role_policy" {
  type        = string
  description = "IAM Role Policy Statement"
}