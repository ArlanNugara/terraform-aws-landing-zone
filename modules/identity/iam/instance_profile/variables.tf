// IAM Instance Profile Variables

variable "instance_profile_name" {
  type        = string
  description = "Instance Profile Name"
}

variable "role_name" {
  type        = string
  description = "IAM Role Name"
}

variable "instance_profile_path" {
  type        = string
  description = "Instance Profile Path"
  default     = "/"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}