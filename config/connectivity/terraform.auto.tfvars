// Values

default_tags = {
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "CreatedBy"        = "Terraform"
}

# VPC

hub_vpc_name     = "alv_hub_vpc"
hub_vpc_address  = "10.10.0.0/16"
sbx_vpc_name     = "alv_sbx_vpc"
sbx_vpc_address  = "10.20.0.0/16"
dev_vpc_name     = "alv_dev_vpc"
dev_vpc_address  = "10.30.0.0/16"
qa_vpc_name      = "alv_qa_vpc"
qa_vpc_address   = "10.40.0.0/16"
prod_vpc_name    = "alv_prod_vpc"
prod_vpc_address = "10.50.0.0/16"

# Internet gateway

hub_igw_name  = "alv_hub_igw"
sbx_igw_name  = "alv_sbx_igw"
dev_igw_name  = "alv_dev_igw"
qa_igw_name   = "alv_qa_igw"
prod_igw_tags = "alv_prod_igw"

# DHCP Options
hub_dhcp_option_name  = "alv_hub_dhcp_option"
sbx_dhcp_option_name  = "alv_sbx_dhcp_option"
dev_dhcp_option_name  = "alv_dev_dhcp_option"
qa_dhcp_option_name   = "alv_qa_dhcp_option"
prod_dhcp_option_name = "alv_prod_dhcp_option"

# Subnet
hub_general_snet_address  = "10.10.1.0/24"
hub_general_snet_name     = "alv_hub_snet_general"
hub_firewall_snet_address = "10.10.2.0/24"
hub_firewall_snet_name    = "alv_hub_snet_firewall"
hub_vpngw_snet_address    = "10.10.3.0/24"
hub_vpngw_snet_name       = "alv_hub_snet_vpngw"

# Route Table
hub_general_rt_name  = "alv_hub_general_rt"
hub_firewall_rt_name = "alv_hub_firewall_rt"
hub_vpngw_rt_name    = "alv_hub_vpngw_rt"

# NACL
hub_nacl_name = "alv_hub_nacl"

# Security Group
hub_sg_name        = "alv_hub_sg"
hub_sg_description = "ALV Hub Security Group"

# VPN Gateway
hub_vpngw_name           = "alv_hub_vpngw"
hub_custgw_name          = "alv_hub_custgw"
hub_vpn_conn_name        = "alv_vpn_conn"
hub_custgw_asn           = 60000
hub_custgw_ip            = "103.220.210.93"
hub_vpn_conn_remote_cidr = "172.16.0.0/24"

# Firewall
fw_name    = "alv_hub_fw"
fw_targets = ["www.example.com"]