// VPC DHCP Option Variables

variable "dhcp_option_name" {
  type        = string
  description = "DHCP Option Name"
}

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

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}