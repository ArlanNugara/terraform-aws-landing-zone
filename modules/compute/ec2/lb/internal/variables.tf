// Internal Load Balancer Variables

variable "lb_name" {
  type        = string
  description = "Load Balancer Name"
}

variable "lb_internal_tags" {
  type        = map(string)
  description = "Load Balancer Tags"
}

variable "lb_snet_id" {
  type        = string
  description = "Load Balancer Subnet ID"
}