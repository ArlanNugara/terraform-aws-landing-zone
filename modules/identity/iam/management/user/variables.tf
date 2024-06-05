// IAM User Variables

variable "user_name" {
  type        = string
  description = "User Name"
}

variable "user_path" {
  type        = string
  description = "User Path"
  default     = "/"
}

variable "user_tags" {
  type        = map(string)
  description = "User Tags"
}