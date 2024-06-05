// Customer Gateway Variables

variable "custgw_device_name" {
  type        = string
  description = "Customer Gateway Device Name"
}

variable "custgw_bgp_asn" {
  type        = number
  description = "VPN Gateway Customer Gateway Border Gateway Protocol (BGP) Autonomous System Number (ASN)"
}

variable "custgw_ip" {
  type        = string
  description = "The IPv4 address for the Customer Gateway device's outside interface"
}

variable "custgw_tags" {
  type        = map(string)
  description = "Customer Gateway Tags"
}