// IAM Group User Membership Variables

variable "membership_name" {
  type        = string
  description = "IAM User Group Membership Name"
}

variable "user_names" {
  type        = list(string)
  description = "IAM User Names"
}

variable "group_name" {
  type        = string
  description = "IAM Group Name"
}