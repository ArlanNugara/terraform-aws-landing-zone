// Variables

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

// Instances

variable "sbx_app_1_name" {
  type = string
  description = "SBX App Instance Name"
}

variable "sbx_app_1_ami" {
  type = string
  description = "SBX App Instance AMI"
}

variable "sbx_app_1_type" {
  type = string
  description = "SBX App Instance Type"
}

variable "sbx_app_1_kp" {
  type = string
  description = "SBX App Instance Key Pair Name"
}

variable "sbx_web_1_name" {
  type = string
  description = "SBX Web Instance Name"
}

variable "sbx_web_1_ami" {
  type = string
  description = "SBX Web Instance AMI"
}

variable "sbx_web_1_type" {
  type = string
  description = "SBX Web Instance Type"
}

variable "sbx_web_1_kp" {
  type = string
  description = "SBX Web Instance Key Pair Name"
}

variable "sbx_db_1_name" {
  type = string
  description = "SBX DB Instance Name"
}

variable "sbx_db_1_ami" {
  type = string
  description = "SBX DB Instance AMI"
}

variable "sbx_db_1_type" {
  type = string
  description = "SBX DB Instance Type"
}

variable "sbx_db_1_kp" {
  type = string
  description = "SBX DB Instance Key Pair Name"
}

// Storage

variable "sbx_s3_name" {
  type        = string
  description = "SBX S3 Bucket name"
}

variable "sbx_s3_prefix" {
  type        = string
  description = "SBX S3 Bucket Prefix"
}