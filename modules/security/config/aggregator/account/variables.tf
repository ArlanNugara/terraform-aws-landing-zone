// Config Aggregator Variables

variable "aggregator_name" {
  type        = string
  description = "Config Aggregator Name"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

variable "aggregator_account_ids" {
  type        = list(string)
  description = "Config Aggregator Account IDs"
}