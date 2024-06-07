// Accounts Variables

variable "ac_name" {
  type        = string
  description = "Account Name"
}

variable "ac_email" {
  type        = string
  description = "Account Email"
}

variable "ac_parent_id" {
  type        = string
  description = "Account Parent OU or Root ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}