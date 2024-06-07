// Internal Load Balancer Variables

variable "lb_name" {
  type        = string
  description = "Load Balancer Name"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

variable "lb_snet_id" {
  type        = string
  description = "Load Balancer Subnet ID"
}