// IAM Role Variables

variable "role_name" {
  type        = string
  description = "IAM Role Name"
}

variable "role_description" {
  type        = string
  description = "IAM Role Description"
}

variable "role_policy" {
  type        = string
  description = "IAM Role Statement"
}

variable "role_tags" {
  type        = map(string)
  description = "IAM Role Tags"
}