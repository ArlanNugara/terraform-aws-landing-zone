// Config Aggregator Variables

variable "aggregator_name" {
  type        = string
  description = "Config Aggregator Name"
}

variable "aggregator_tags" {
  type        = map(string)
  description = "Config Aggregator Tags"
}

variable "aggregator_account_ids" {
  type        = list(string)
  description = "Config Aggregator Account IDs"
}