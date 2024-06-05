// Security Hub Finding Aggregator Variables

variable "sh_finding_aggregator_linking_mode" {
  type        = string
  description = "Security Hub Finding Aggregator Linking Mode"
  default     = "ALL_REGIONS"
}

variable "sh_finding_aggregator_regions" {
  type        = list(string)
  description = "Security Hub Finding Aggregator Specified Regions"
  default     = null
}