// S3 Object Variables

variable "bucket_name" {
  type        = string
  description = "S3 Bucket Name"
}

variable "object_name" {
  type        = string
  description = "S3 Object Name"
}

variable "source_file" {
  type        = string
  description = "S3 Source File Location"
}