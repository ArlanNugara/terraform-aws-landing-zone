// Load Balancer Taget Group Variables

variable "lb_tg_name" {
  type        = string
  description = "Load Balancer Target Group Name"
}

variable "lb_tg_port" {
  type        = number
  description = "Load Balancer Target Group Port"
  default     = 80
}

variable "lb_tg_protocol" {
  type        = string
  description = "Load Balancer Target Group Protocol"
  default     = "TCP"
}

variable "lb_tg_protocol_version" {
  type        = string
  description = "Load Balancer Target Group Protocol Version"
  default     = null
}

variable "lb_tg_target_type" {
  type        = string
  description = "Load Balancer Target Group Target Type"
  default     = "ip"
}

variable "lb_tg_algo_type" {
  type        = string
  description = "Load Balancer Target Group Algorithm Type"
  default     = null
}

variable "lb_tg_address_type" {
  type        = string
  description = "Load Balancer Target Group Address Type"
  default     = null
}

variable "lb_tg_cross_zone" {
  type        = string
  description = "Load Balancer Target Group Cross Zone"
  default     = "use_load_balancer_configuration"
}

variable "lb_tg_preserve_client_ip" {
  type        = bool
  description = "Load Balancer Target Group Client IP Preservation"
  default     = null
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "lb_tg_tags" {
  type        = map(string)
  description = "Load Balancer Target Group Tags"
}

variable "lb_tg_hc_path" {
  type        = string
  description = "Load Balancer Target Group Health Check Path"
  default     = null
}

variable "lb_tg_hc_protocol" {
  type        = string
  description = "Load Balancer Target Group Health Check Protocol"
  default     = "TCP"
}