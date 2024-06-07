// Variables

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}

// VPC

variable "hub_vpc_name" {
  type        = string
  description = "Hub VPC Name"
}

variable "hub_vpc_address" {
  type        = string
  description = "Hub VPC Address Space"
}

variable "sbx_vpc_name" {
  type        = string
  description = "SBX VPC Name"
}

variable "sbx_vpc_address" {
  type        = string
  description = "SBX VPC Address Space"
}

variable "dev_vpc_name" {
  type        = string
  description = "Dev VPC Name"
}

variable "dev_vpc_address" {
  type        = string
  description = "Dev VPC Address Space"
}

variable "qa_vpc_name" {
  type        = string
  description = "QA VPC Name"
}

variable "qa_vpc_address" {
  type        = string
  description = "QA VPC Address Space"
}

variable "prod_vpc_name" {
  type        = string
  description = "Prod VPC Name"
}

variable "prod_vpc_address" {
  type        = string
  description = "Prod VPC Address Space"
}

// Internet Gateway

variable "hub_igw_name" {
  type        = string
  description = "Hub IGW Name"
}

variable "sbx_igw_name" {
  type        = string
  description = "SBX IGW Name"
}

variable "dev_igw_name" {
  type        = string
  description = "Dev IGW Name"
}

variable "qa_igw_name" {
  type        = string
  description = "QA IGW Name"
}

variable "prod_igw_name" {
  type        = string
  description = "Prod IGW Name"
}

// DHCP Options

variable "hub_dhcp_option_name" {
  type        = string
  description = "HUB DHCP Option Name"
}

variable "sbx_dhcp_option_name" {
  type        = string
  description = "SBX DHCP Option Name"
}

variable "dev_dhcp_option_name" {
  type        = string
  description = "Development DHCP Option Name"
}

variable "qa_dhcp_option_name" {
  type        = string
  description = "QA DHCP Option Name"
}

variable "prod_dhcp_option_name" {
  type        = string
  description = "Prod DHCP Option Name"
}

// Subnet

variable "hub_general_snet_name" {
  type        = string
  description = "Hub General SNET Name"
}

variable "hub_general_snet_address" {
  type        = string
  description = "HUB General SNET Address Space"
}

variable "hub_firewall_snet_name" {
  type        = string
  description = "Hub Firewall SNET Name"
}

variable "hub_firewall_snet_address" {
  type        = string
  description = "HUB Firewall SNET Address Space"
}

variable "hub_vpngw_snet_name" {
  type        = string
  description = "Hub VPNGW SNET Name"
}

variable "hub_vpngw_snet_address" {
  type        = string
  description = "HUB VPN Gateway SNET Address Space"
}

// Route Table

variable "hub_general_rt_name" {
  type        = string
  description = "Hub General Route Table Name"
}

variable "hub_firewall_rt_name" {
  type        = string
  description = "Hub General Route Table Name"
}

variable "hub_vpngw_rt_name" {
  type        = string
  description = "Hub General Route Table Name"
}

// Network Access Control List

variable "hub_nacl_name" {
  type        = string
  description = "Hub NACL Name"
}

// Security Group

variable "hub_sg_name" {
  type        = string
  description = "HUB Security Group Name"
}

variable "hub_sg_description" {
  type        = string
  description = "HUB Security Group Description"
}

// VPN Gateway

variable "hub_vpngw_name" {
  type        = string
  description = "HUB VPN Gateway Name"
}

variable "hub_custgw_name" {
  type        = string
  description = "Hub Customer Gateway Name"
}

variable "hub_vpn_conn_name" {
  type        = string
  description = "Hub VPN Connection Name"
}

variable "hub_custgw_asn" {
  type        = number
  description = "Hub Customer Gateway BGP ASN Number"
}

variable "hub_custgw_ip" {
  type        = string
  description = "External Interface IP of the target"
}

variable "hub_vpn_conn_remote_cidr" {
  type        = string
  description = "Remote IPv4 address range"
}

// Firewall

variable "fw_name" {
  type        = string
  description = "Firewall Name"
}

variable "fw_targets" {
  type        = list(string)
  description = "Firewall Targets"
}