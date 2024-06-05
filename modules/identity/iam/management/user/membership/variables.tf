// IAM User Group Membership Variables

variable "user_name" {
  type        = string
  description = "IAM User Name"
}

variable "group_names" {
  type        = list(string)
  description = "IAM Group Names"
}