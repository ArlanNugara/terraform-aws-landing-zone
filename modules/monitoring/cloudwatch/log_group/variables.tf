// CloudWatch Log Group Variables

variable "log_group_name" {
  type        = string
  description = "CloudWatch Log Group Name"
}

variable "log_group_class" {
  type        = string
  description = "CloudWatch Log Group Class"
  default     = "STANDARD"
}

variable "log_group_log_retension_days" {
  type        = number
  description = "CloudWatch Log Group Name"
  default     = 90
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}