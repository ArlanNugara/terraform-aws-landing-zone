// VPN Connection Variables

variable "vpngw_id" {
  type        = string
  description = "VPN Gateway ID"
}

variable "custgw_id" {
  type        = string
  description = "Customer Gateway ID"
}

variable "custgw_cidr" {
  type        = string
  description = "The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection"
}

variable "cloud_cidr" {
  type        = string
  description = "The IPv4 CIDR on the AWS side of the VPN connection"
}

variable "vpn_conn_static_routes" {
  type        = bool
  description = "VPN Connection Static Routes"
  default     = false
}

variable "vpn_conn_tags" {
  type        = map(string)
  description = "VPN Connection Tags"
}