// Application Load Balancer Variables

variable "lb_app_name" {
  type        = string
  description = "Load Balancer Name"
}

variable "lb_app_sg_ids" {
  type        = list(string)
  description = "Load Balancer Security Group IDs"
}

variable "lb_app_snet_ids" {
  type        = list(string)
  description = "Load Balancer Subnet IDs"
}

variable "lb_app_invalid_header" {
  type        = bool
  description = "Load Balancer Drop Invalid Header"
  default     = false
}

variable "lb_app_cipher_suite" {
  type        = bool
  description = "Load Balancer TLS Version and Cypher Suite Header"
  default     = false
}

variable "lb_app_http2" {
  type        = bool
  description = "Load Balancer HTTP2"
  default     = true
}

variable "lb_app_xff_client_port" {
  type        = bool
  description = "Load Balancer XFF Client Port"
  default     = false
}

variable "lb_app_idle_timeout" {
  type        = number
  description = "Load Balancer Idle Timeout"
  default     = 30
}

variable "lb_app_host_header_preservation" {
  type        = bool
  description = "Load Balancer Host Header Preservation"
  default     = false
}

variable "lb_app_xff_header_mode" {
  type        = string
  description = "Load Balancer XFF Header Preservation Mode"
  default     = "preserve"
}

variable "lb_app_tags" {
  type        = map(string)
  description = "Load Balancer Tags"
}