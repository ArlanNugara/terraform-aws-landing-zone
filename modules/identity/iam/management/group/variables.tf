// IAM Group Variables

variable "group_name" {
  type        = string
  description = "IAM Group Name"
}

variable "group_path" {
  type        = string
  description = "IAM Group Path"
  default     = "/"
}