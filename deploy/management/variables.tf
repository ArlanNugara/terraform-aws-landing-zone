// Variables

variable "sh_master_account_id" {
  type        = string
  description = "Security Hub Master Account ID"
}

variable "security_hub_nist_arn" {
  type        = string
  description = "NIST ARN"
}

variable "security_hub_pcidss_arn" {
  type        = string
  description = "PCI DSS ARN"
}

variable "security_hub_awsfb_arn" {
  type        = string
  description = "AWS Foundations Benchmark v1.4.0 ARN"
}


variable "config_bucket_name" {
  type        = string
  description = "Bucket Name Prefix"
}

variable "backup_bucket_name" {
  type        = string
  description = "Bucket Name Prefix"
}

variable "config_iam_role_name" {
  type        = string
  description = "Config IAM Role Name"
}

variable "config_iam_role_description" {
  type        = string
  description = "Config IAM Role Description"
}

variable "config_recorder_name" {
  type        = string
  description = "Config Recorder Name"
}

variable "config_iam_policy_name" {
  type        = string
  description = "Config IAM Policy Name"
}

variable "config_policy_attachment_arn" {
  type        = string
  description = "Config Role Policy Attachment ARN"
  default     = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
}

variable "config_org_policy_attachment_arn" {
  type        = string
  description = "Config Organization Role Policy Attachment ARN"
  default     = "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations"
}

variable "config_delivery_channel_name" {
  type        = string
  description = "Config Delivery Channel Name"
}

variable "config_org_aggregator_name" {
  type        = string
  description = "Config Account Aggregator Name"
}

variable "custom_req_tag_policy_name" {
  type        = string
  description = "Custom Required Tag Policy Name"
}

variable "custom_req_tag_policy_description" {
  type        = string
  description = "Custom Required Tag Policy Description"
}

variable "custom_allowed_location_policy_name" {
  type        = string
  description = "Custom Allowed Location Policy Name"
}

variable "custom_allowed_location_policy_description" {
  type        = string
  description = "Custom Allowed Location Policy Description"
}

variable "backup_vault_name" {
  type        = string
  description = "Backup Vault Name"
}