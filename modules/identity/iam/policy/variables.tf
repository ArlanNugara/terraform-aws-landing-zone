// IAM Policy Variables

variable "policy_name" {
  type        = string
  description = "IAM Policy Name"
}

variable "policy_path" {
  type        = string
  description = "IAM Policy Path"
  default     = "/"
}

variable "policy_description" {
  type        = string
  description = "IAM Policy Description"
}

variable "policy" {
  type        = string
  description = "IAM Policy Statement"
}

variable "policy_tags" {
  type        = map(string)
  description = "IAM Policy Tags"
}