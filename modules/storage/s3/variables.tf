// Simple Storage Service Variables

variable "bucket_name" {
  type        = string
  description = "S3 Bucket name"
}

variable "bucket_prefix" {
  type        = string
  description = "S3 Bucket Prefix"
}

variable "bucket_force_destroy" {
  type        = bool
  description = "S3 Bucket Force Destroy"
  default     = false
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}