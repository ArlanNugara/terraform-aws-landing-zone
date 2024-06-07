// Organization Policy Variables

variable "policy_name" {
  type        = string
  description = "Organization Policy Name"
}

variable "policy_description" {
  type        = string
  description = "Organization Policy Description"
}

variable "policy_content" {
  type        = string
  description = "Organization Policy Content"
}

variable "policy_type" {
  type        = string
  description = "Organization Policy Type"
}

variable "target_id" {
  type        = string
  description = "Organization Policy Attachment Target ID"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}