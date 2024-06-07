data "aws_organizations_organization" "root_org" {}

locals {
  # VPC
  vpc = {
    "hub" = {
      name    = var.hub_vpc_name
      address = var.hub_vpc_address
    }
    "sbx" = {
      name    = var.sbx_vpc_name
      address = var.sbx_vpc_address
    }
    "dev" = {
      name    = var.dev_vpc_name
      address = var.dev_vpc_address
    }
    "qa" = {
      name    = var.qa_vpc_name
      address = var.qa_vpc_address
    }
    "prod" = {
      name    = var.prod_vpc_name
      address = var.prod_vpc_address
    }
  }
  peering = {
    "hub-sbx" = {
      source_vpc_id = module.vpc["hub"].output_vpc_id
      remote_vpc_id = module.vpc["sbx"].output_vpc_id
    }
    "hub-dev" = {
      source_vpc_id = module.vpc["hub"].output_vpc_id
      remote_vpc_id = module.vpc["dev"].output_vpc_id
    }
    "hub-qa" = {
      source_vpc_id = module.vpc["hub"].output_vpc_id
      remote_vpc_id = module.vpc["qa"].output_vpc_id
    }
    "hub-prod" = {
      source_vpc_id = module.vpc["hub"].output_vpc_id
      remote_vpc_id = module.vpc["prod"].output_vpc_id
    }
  }
  # Internet Gateway
  igw = {
    "hub" = {
      name = var.hub_igw_name
      vpc  = module.vpc["hub"].output_vpc_id
    }
    "sbx" = {
      name = var.sbx_igw_name
      vpc  = module.vpc["sbx"].output_vpc_id
    }
    "dev" = {
      name = var.dev_igw_name
      vpc  = module.vpc["dev"].output_vpc_id
    }
    "qa" = {
      name = var.qa_igw_name
      vpc  = module.vpc["qa"].output_vpc_id
    }
    "prod" = {
      name = var.prod_igw_name
      vpc  = module.vpc["prod"].output_vpc_id
    }
  }
  # DHCP Options
  dhcp_option = {
    "hub" = {
      name = var.hub_dhcp_option_name
    }
    "sbx" = {
      name = var.sbx_dhcp_option_name
    }
    "dev" = {
      name = var.dev_dhcp_option_name
    }
    "qa" = {
      name = var.qa_dhcp_option_name
    }
    "prod" = {
      name = var.prod_dhcp_option_name
    }
  }
  # DHCP Association
  dhcp_association = {
    "hub" = {
      vpc  = module.vpc["hub"].output_vpc_id
      dhcp = module.dhcp_option["hub"].output_vpc_dhcp_id
    }
    "sbx" = {
      vpc  = module.vpc["sbx"].output_vpc_id
      dhcp = module.dhcp_option["sbx"].output_vpc_dhcp_id
    }
    "dev" = {
      vpc  = module.vpc["dev"].output_vpc_id
      dhcp = module.dhcp_option["dev"].output_vpc_dhcp_id
    }
    "qa" = {
      vpc  = module.vpc["qa"].output_vpc_id
      dhcp = module.dhcp_option["qa"].output_vpc_dhcp_id
    }
    "prod" = {
      vpc  = module.vpc["prod"].output_vpc_id
      dhcp = module.dhcp_option["prod"].output_vpc_dhcp_id
    }
  }
  # Subnet
  snet = {
    "general" = {
      name    = var.hub_general_snet_name
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_general_snet_address
      az      = "ca-central-1a"
    }
    "firewall" = {
      name    = var.hub_firewall_snet_name
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_firewall_snet_address
      az      = "ca-central-1a"
    }
    "vpngw" = {
      name    = var.hub_vpngw_snet_name
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_vpngw_snet_address
      az      = "ca-central-1a"
    }
  }
  # Route Table
  main_route_table = {
    "general" = {
      name = var.hub_general_rt_name
      vpc  = module.vpc["hub"].output_vpc_id
    }
    "firewall" = {
      name = var.hub_firewall_rt_name
      vpc  = module.vpc["hub"].output_vpc_id
    }
    "vpngw" = {
      name = var.hub_vpngw_rt_name
      vpc  = module.vpc["hub"].output_vpc_id
    }
  }
  rt_association = {
    "general" = {
      rt   = module.route_table["general"].output_rt_id
      snet = module.snet["general"].output_snet_id
      igw  = module.igw["hub"].output_igw_id
      cidr = "0.0.0.0/0"
    }
    "firewall" = {
      rt   = module.route_table["firewall"].output_rt_id
      snet = module.snet["firewall"].output_snet_id
      igw  = module.igw["hub"].output_igw_id
      cidr = "0.0.0.0/0"
    }
    "vpngw" = {
      rt   = module.route_table["vpngw"].output_rt_id
      snet = module.snet["vpngw"].output_snet_id
      igw  = module.igw["hub"].output_igw_id
      cidr = "0.0.0.0/0"
    }
  }
  # Network Access Control List
  nacl = {
    "hub" = {
      name = var.hub_nacl_name
      vpc  = module.vpc["hub"].output_vpc_id
      snet = [module.snet["general"].output_snet_id, module.snet["firewall"].output_snet_id, module.snet["vpngw"].output_snet_id]
    }
  }
  # Security Group
  sg = {
    "hub" = {
      name        = var.hub_sg_name
      description = var.hub_sg_description
      vpc         = module.vpc["hub"].output_vpc_id
    }
  }
  # VPN Gateway
  vpngw = {
    "hub" = {
      name = var.hub_vpngw_name
      vpc  = module.vpc["hub"].output_vpc_id
      az   = "ca-central-1a"
    }
  }
  custgw = {
    "hub" = {
      name = var.hub_custgw_name
      asn  = var.hub_custgw_asn
      ip   = var.hub_custgw_ip
    }
  }
  vpn_conn = {
    "hub" = {
      name        = var.hub_vpn_conn_name
      vpngw       = module.vpngw["hub"].output_vpngw_id
      custgw      = module.custgw["hub"].output_custgw_id
      remote_cidr = var.hub_vpn_conn_remote_cidr
      cloud_cidr  = module.vpc["hub"].output_vpc_cidr
    }
  }
  # Network Firewall
  firewall = {
    "hub" = {
      name    = var.fw_name,
      vpc     = module.vpc["hub"].output_vpc_id
      snet    = module.snet["firewall"].output_snet_id
      targets = var.fw_targets
    }
  }
}