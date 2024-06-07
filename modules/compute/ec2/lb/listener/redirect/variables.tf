// Load Balancer Redirect Listener Variables

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

variable "lb_list_redirect_path" {
  type        = string
  description = "Load Balancer Redirect Listener Path"
  default     = "/"
}

variable "lb_list_redirect_port" {
  type        = string
  description = "Load Balancer Redirect Listener Port"
}

variable "lb_list_redirect_protocol" {
  type        = string
  description = "Load Balancer Redirect Listener Protocol"
  default     = "HTTP"
}

variable "lb_list_redirect_status_code" {
  type        = string
  description = "Load Balancer Redirect Listener Status Code"
  default     = "HTTP_301"
}