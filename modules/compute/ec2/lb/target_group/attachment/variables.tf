// Load Balancer Target Group Attachment Variables

variable "lb_tg_arn" {
  type        = string
  description = "Load Balancer Target Group ARN"
}

variable "lb_tg_attachment_target_id" {
  type        = string
  description = "Load Balancer Target Group Target ID"
}

variable "lb_tg_attachment_port" {
  type        = number
  description = "Load Balancer Target Group Attachment Port"
  default     = 80
}