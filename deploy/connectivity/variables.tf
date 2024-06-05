// Variables

// VPC

variable "hub_vpc_address" {
  type        = string
  description = "Hub VPC Address Space"
}

variable "hub_vpc_tags" {
  type        = map(string)
  description = "Hub VPC Tags"
}

variable "sbx_vpc_address" {
  type        = string
  description = "SBX VPC Address Space"
}

variable "sbx_vpc_tags" {
  type        = map(string)
  description = "SBX VPC Tags"
}

variable "dev_vpc_address" {
  type        = string
  description = "Dev VPC Address Space"
}

variable "dev_vpc_tags" {
  type        = map(string)
  description = "Dev VPC Tags"
}

variable "qa_vpc_address" {
  type        = string
  description = "QA VPC Address Space"
}

variable "qa_vpc_tags" {
  type        = map(string)
  description = "QA VPC Tags"
}

variable "prod_vpc_address" {
  type        = string
  description = "Prod VPC Address Space"
}

variable "prod_vpc_tags" {
  type        = map(string)
  description = "Prod VPC Tags"
}

// Internet Gateway

variable "hub_igw_tags" {
  type        = map(string)
  description = "HUB Internet Gateway Tags"
}

variable "sbx_igw_tags" {
  type        = map(string)
  description = "SBX Internet Gateway Tags"
}

variable "dev_igw_tags" {
  type        = map(string)
  description = "Development Internet Gateway Tags"
}

variable "qa_igw_tags" {
  type        = map(string)
  description = "QA Internet Gateway Tags"
}

variable "prod_igw_tags" {
  type        = map(string)
  description = "Prod Internet Gateway Tags"
}

// DHCP Options

variable "hub_dhcp_option_tags" {
  type        = map(string)
  description = "HUB DHCP Option Tags"
}

variable "sbx_dhcp_option_tags" {
  type        = map(string)
  description = "SBX DHCP Option Tags"
}

variable "dev_dhcp_option_tags" {
  type        = map(string)
  description = "Development DHCP Option Tags"
}

variable "qa_dhcp_option_tags" {
  type        = map(string)
  description = "QA DHCP Option Tags"
}

variable "prod_dhcp_option_tags" {
  type        = map(string)
  description = "Prod DHCP Option Tags"
}

variable "hub_general_snet_address" {
  type        = string
  description = "HUB General SNET Address Space"
}

variable "hub_general_snet_tags" {
  type        = map(string)
  description = "HUB General SNET Tags"
}

variable "hub_firewall_snet_address" {
  type        = string
  description = "HUB Firewall SNET Address Space"
}

variable "hub_firewall_snet_tags" {
  type        = map(string)
  description = "HUB Firewall SNET Tags"
}

variable "hub_vpngw_snet_address" {
  type        = string
  description = "HUB VPN Gateway SNET Address Space"
}

variable "hub_vpngw_snet_tags" {
  type        = map(string)
  description = "HUB VPN Gateway SNET Tags"
}

variable "hub_general_rt_tags" {
  type        = map(string)
  description = "Hub General Route Table Tags"
}

variable "hub_firewall_rt_tags" {
  type        = map(string)
  description = "Hub General Route Table Tags"
}

variable "hub_vpngw_rt_tags" {
  type        = map(string)
  description = "Hub General Route Table Tags"
}

variable "hub_nacl_tags" {
  type        = map(string)
  description = "Hub NACL Tags"
}

variable "hub_sg_name" {
  type        = string
  description = "HUB Security Group Name"
}

variable "hub_sg_description" {
  type        = string
  description = "HUB Security Group Description"
}

variable "hub_sg_tags" {
  type        = map(string)
  description = "HUB Security Group Tags"
}

// VPN Gateway

variable "hub_vpngw_tags" {
  type        = map(string)
  description = "HUB VPN Gateway Tags"
}

variable "hub_custgw_name" {
  type        = string
  description = "Hub Customer Gateway Name"
}

variable "hub_custgw_asn" {
  type        = number
  description = "Hub Customer Gateway BGP ASN Number"
}

variable "hub_custgw_ip" {
  type        = string
  description = "External Interface IP of the target"
}

variable "hub_custgw_tags" {
  type        = map(string)
  description = "Hub Customer Gateway Tags"
}

variable "hub_vpn_conn_tags" {
  type        = map(string)
  description = "Hub VPNGW Connection Tags"
}

variable "hub_vpn_conn_remote_cidr" {
  type        = string
  description = "Remote IPv4 address range"
}