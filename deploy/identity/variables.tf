// Variables

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

# Roles

variable "ec2_assume_role_name" {
  type        = string
  description = "EC2 Assume Role Name"
}

variable "ec2_assume_role_description" {
  type        = string
  description = "EC2 Assume Role Description"
}

variable "s3_assume_role_name" {
  type        = string
  description = "S3 Assume Role Name"
}

variable "s3_assume_role_description" {
  type        = string
  description = "S3 Assume Role Description"
}

# Policy

variable "ec2_ro_policy_name" {
  type        = string
  description = "EC2 Read Only Policy Name"
}

variable "ec2_ro_policy_description" {
  type        = string
  description = "EC2 Read Only Policy Description"
}

variable "ec2_rw_policy_name" {
  type        = string
  description = "EC2 Admin Policy Name"
}

variable "ec2_rw_policy_description" {
  type        = string
  description = "EC2 Admin Policy Description"
}

variable "s3_ro_policy_name" {
  type        = string
  description = "S3 Read Only Policy Name"
}

variable "s3_ro_policy_description" {
  type        = string
  description = "S3 Read Only Policy Description"
}

variable "s3_rw_policy_name" {
  type        = string
  description = "S3 Admin Policy Name"
}

variable "s3_rw_policy_description" {
  type        = string
  description = "S3 Admin Policy Description"
}

# Instance Profile

variable "instance_profile_name" {
  type        = string
  description = "Instance Profile name"
}