// Load Balancer Forward Listener Variables

variable "listener_name" {
  type        = string
  description = "LB Listner Name"
}

variable "lb_arn" {
  type        = string
  description = "Load Balancer ARN"
}

variable "lb_list_port" {
  type        = number
  description = "Load Balancer Listener Port"
  default     = 80
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

variable "lb_list_protocol" {
  type        = string
  description = "Load Balancer Listener Protocol"
  default     = "TCP"
}

variable "lb_tg_arn" {
  type        = string
  description = "Load Balancer Target Group ARN"
}