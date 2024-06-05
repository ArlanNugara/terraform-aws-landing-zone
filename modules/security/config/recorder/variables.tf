// AWS Config Recorder Variables

variable "config_recorder_name" {
  type        = string
  description = "Config Recorder Name"
}

variable "iam_role_arn" {
  type        = string
  description = "IAM Role ARN"
}