// Values

# VPC

hub_vpc_address = "10.10.0.0/16"
hub_vpc_tags = {
  "Name"             = "alv_hub_vpc",
  "Environment"      = "Hub",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPC",
  "CreatedBy"        = "Terraform"
}
sbx_vpc_address = "10.20.0.0/16"
sbx_vpc_tags = {
  "Name"             = "alv_sbx_vpc",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPC",
  "CreatedBy"        = "Terraform"
}
dev_vpc_address = "10.30.0.0/16"
dev_vpc_tags = {
  "Name"             = "alv_dev_vpc",
  "Environment"      = "Development",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPC",
  "CreatedBy"        = "Terraform"
}
qa_vpc_address = "10.40.0.0/16"
qa_vpc_tags = {
  "Name"             = "alv_qa_vpc",
  "Environment"      = "QA",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPC",
  "CreatedBy"        = "Terraform"
}
prod_vpc_address = "10.50.0.0/16"
prod_vpc_tags = {
  "Name"             = "alv_prod_vpc",
  "Environment"      = "Production",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPC",
  "CreatedBy"        = "Terraform"
}

# Internet gateway

hub_igw_tags = {
  "Name"             = "alv_hub_igw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "IGW",
  "CreatedBy"        = "Terraform"
}
sbx_igw_tags = {
  "Name"             = "alv_sbx_igw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "IGW",
  "CreatedBy"        = "Terraform"
}
dev_igw_tags = {
  "Name"             = "alv_dev_igw",
  "Environment"      = "Development",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "IGW",
  "CreatedBy"        = "Terraform"
}
qa_igw_tags = {
  "Name"             = "alv_qa_igw",
  "Environment"      = "QA",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "IGW",
  "CreatedBy"        = "Terraform"
}
prod_igw_tags = {
  "Name"             = "alv_prod_igw",
  "Environment"      = "Production",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "IGW",
  "CreatedBy"        = "Terraform"
}

# DHCP Options
hub_dhcp_option_tags = {
  "Name"             = "alv_hub_dhcp_option",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "DHCP Option",
  "CreatedBy"        = "Terraform"
}
sbx_dhcp_option_tags = {
  "Name"             = "alv_sbx_dhcp_option",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "DHCP Option",
  "CreatedBy"        = "Terraform"
}
dev_dhcp_option_tags = {
  "Name"             = "alv_dev_dhcp_option",
  "Environment"      = "Development",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "DHCP Option",
  "CreatedBy"        = "Terraform"
}
qa_dhcp_option_tags = {
  "Name"             = "alv_qa_dhcp_option",
  "Environment"      = "QA",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "DHCP Option",
  "CreatedBy"        = "Terraform"
}
prod_dhcp_option_tags = {
  "Name"             = "alv_prod_dhcp_option",
  "Environment"      = "Production",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "DHCP Option",
  "CreatedBy"        = "Terraform"
}

hub_general_snet_address = "10.10.1.0/24"
hub_general_snet_tags = {
  "Name"             = "alv_hub_snet_general",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Subnet",
  "CreatedBy"        = "Terraform"
}
hub_firewall_snet_address = "10.10.2.0/24"
hub_firewall_snet_tags = {
  "Name"             = "alv_hub_snet_firewall",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Subnet",
  "CreatedBy"        = "Terraform"
}
hub_vpngw_snet_address = "10.10.3.0/24"
hub_vpngw_snet_tags = {
  "Name"             = "alv_hub_snet_vpngw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Subnet",
  "CreatedBy"        = "Terraform"
}
hub_general_rt_tags = {
  "Name"             = "alv_hub_general_rt",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Route Table",
  "CreatedBy"        = "Terraform"
}
hub_firewall_rt_tags = {
  "Name"             = "alv_hub_firewall_rt",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Route Table",
  "CreatedBy"        = "Terraform"
}
hub_vpngw_rt_tags = {
  "Name"             = "alv_hub_vpngw_rt",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Route Table",
  "CreatedBy"        = "Terraform"
}
hub_nacl_tags = {
  "Name"             = "alv_hub_nacl",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Network Access Control List",
  "CreatedBy"        = "Terraform"
}
hub_sg_name        = "alv_hub_sg"
hub_sg_description = "ALV Hub Security Group"
hub_sg_tags = {
  "Name"             = "alv_hub_sg",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Security Group",
  "CreatedBy"        = "Terraform"
}

# VPN Gateway

hub_vpngw_tags = {
  "Name"             = "alv_hub_vpngw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPN Gateway",
  "CreatedBy"        = "Terraform"
}
hub_custgw_name = "alv_hub_custgw"
hub_custgw_asn  = 60000
hub_custgw_ip   = "103.220.210.93"
hub_custgw_tags = {
  "Name"             = "alv_hub_custgw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Customer Gateway",
  "CreatedBy"        = "Terraform"
}
hub_vpn_conn_tags = {
  "Name"             = "alv_hub_vpn_conn",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "VPN Connection",
  "CreatedBy"        = "Terraform"
}
hub_vpn_conn_remote_cidr = "172.16.0.0/24"

## Firewall

fw_name    = "alv_hub_fw"
fw_targets = ["www.example.com"]
fw_tags = {
  "Name"             = "alv_hub_fw",
  "Environment"      = "Sandbox",
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "Application"      = "Network Firewall",
  "CreatedBy"        = "Terraform"
}