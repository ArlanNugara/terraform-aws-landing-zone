// VPC DHCP Option Variables

variable "vpc_dhcp_dns" {
  type        = list(string)
  description = "VPC DHCP Domain Name Server"
  default     = ["AmazonProvidedDNS"]
}

variable "vpc_dhcp_ntp" {
  type        = list(string)
  description = "VPC DHCP NTP Server"
  default     = []
}

variable "vpc_dhcp_tags" {
  type        = map(string)
  description = "VPC DHCP Option Tags"
}