// Config Aggregator Variables

variable "aggregator_name" {
  type        = string
  description = "Config Aggregator Name"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

variable "role_arn" {
  type        = string
  description = "IAM Role ARN"
}