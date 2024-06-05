// Secrets Manager Variables

variable "secret_name" {
  type        = string
  description = "Secret Manager Secret Name"
}

variable "secret_retention" {
  type        = number
  description = "Secret Manager Secret Retension in Days"
  default     = 15
}

# variable "secret_replica_region" {
#   type        = string
#   description = "Secret Manager Secret Replica Region"
#   default     = null
# }

variable "secret_value" {
  type        = string
  description = "Secret Manager Secret Value"
}

variable "secret_tags" {
  type        = map(string)
  description = "Secret Manager Secret Tags"
}