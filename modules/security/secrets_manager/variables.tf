// Secrets Manager Variables

variable "secret_name" {
  type        = string
  description = "Secret Manager Secret Name"
}

variable "secret_retention" {
  type        = number
  description = "Secret Manager Secret Retension in Days"
  default     = 15
}

variable "secret_value" {
  type        = string
  description = "Secret Manager Secret Value"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}