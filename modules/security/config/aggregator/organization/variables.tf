// Config Aggregator Variables

variable "aggregator_name" {
  type        = string
  description = "Config Aggregator Name"
}

variable "aggregator_tags" {
  type        = map(string)
  description = "Config Aggregator Tags"
}

variable "role_arn" {
  type        = string
  description = "IAM Role ARN"
}