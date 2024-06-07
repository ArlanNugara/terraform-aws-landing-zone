// Config Rule Variables

variable "config_rule_name" {
  type        = string
  description = "Config Rule Name"
}

variable "config_rule_source_owner" {
  type        = string
  description = "Config Rule Source Owner"
  default     = "AWS"
}

variable "config_rule_source_identifier" {
  type        = string
  description = "Config Rule Source Identifier"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}