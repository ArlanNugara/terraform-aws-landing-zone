data "aws_organizations_organization" "root_org" {}

locals {
  # VPC
  vnet = {
    "hub" = {
      address = var.hub_vpc_address
      tags    = var.hub_vpc_tags
    }
    "sbx" = {
      address = var.sbx_vpc_address
      tags    = var.sbx_vpc_tags
    }
    "dev" = {
      address = var.dev_vpc_address
      tags    = var.dev_vpc_tags
    }
    "qa" = {
      address = var.qa_vpc_address
      tags    = var.qa_vpc_tags
    }
    "prod" = {
      address = var.prod_vpc_address
      tags    = var.prod_vpc_tags
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
      vpc  = module.vpc["hub"].output_vpc_id
      tags = var.hub_igw_tags
    }
    "sbx" = {
      vpc  = module.vpc["sbx"].output_vpc_id
      tags = var.sbx_igw_tags
    }
    "dev" = {
      vpc  = module.vpc["dev"].output_vpc_id
      tags = var.dev_igw_tags
    }
    "qa" = {
      vpc  = module.vpc["qa"].output_vpc_id
      tags = var.qa_igw_tags
    }
    "prod" = {
      vpc  = module.vpc["prod"].output_vpc_id
      tags = var.prod_igw_tags
    }
  }
  # DHCP Options
  dhcp_option = {
    "hub" = {
      tags = var.hub_dhcp_option_tags
    }
    "sbx" = {
      tags = var.sbx_dhcp_option_tags
    }
    "dev" = {
      tags = var.dev_dhcp_option_tags
    }
    "qa" = {
      tags = var.qa_dhcp_option_tags
    }
    "prod" = {
      tags = var.prod_dhcp_option_tags
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
  snet = {
    "general" = {
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_general_snet_address
      az      = "ca-central-1a"
      tags    = var.hub_general_snet_tags
    }
    "firewall" = {
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_firewall_snet_address
      az      = "ca-central-1a"
      tags    = var.hub_firewall_snet_tags
    }
    "vpngw" = {
      vpc     = module.vpc["hub"].output_vpc_id
      address = var.hub_vpngw_snet_address
      az      = "ca-central-1a"
      tags    = var.hub_vpngw_snet_tags
    }
  }
  main_route_table = {
    "general" = {
      vpc  = module.vpc["hub"].output_vpc_id
      tags = var.hub_general_rt_tags
    }
    "firewall" = {
      vpc  = module.vpc["hub"].output_vpc_id
      tags = var.hub_firewall_rt_tags
    }
    "vpngw" = {
      vpc  = module.vpc["hub"].output_vpc_id
      tags = var.hub_vpngw_rt_tags
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
  nacl = {
    "hub" = {
      vpc  = module.vpc["hub"].output_vpc_id
      snet = [module.snet["general"].output_snet_id, module.snet["firewall"].output_snet_id, module.snet["vpngw"].output_snet_id]
      tags = var.hub_nacl_tags
    }
  }
  nacl_rules = {
    "hub_ssh" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 100
      from_port = 22
      to_port   = 22
      action    = "deny"
      protocol  = "tcp"
      egress    = false
    }
    "hub_rdp" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 101
      from_port = 3389
      to_port   = 3389
      action    = "deny"
      protocol  = "tcp"
      egress    = false
    }
    "hub_mssql" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 102
      from_port = 1433
      to_port   = 1433
      action    = "deny"
      protocol  = "tcp"
      egress    = false
    }
    "hub_mysql" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 103
      from_port = 3306
      to_port   = 3306
      action    = "deny"
      protocol  = "tcp"
      egress    = false
    }
    "hub_other" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 200
      from_port = 0
      to_port   = 65535
      action    = "allow"
      protocol  = "all"
      egress    = false
    }
    "hub_outbound" = {
      nacl      = module.nacl["hub"].output_nacl_id
      cidr      = "0.0.0.0/0"
      rule      = 100
      from_port = 0
      to_port   = 65535
      action    = "allow"
      protocol  = "all"
      egress    = true
    }
  }
  sg = {
    "hub" = {
      name        = var.hub_sg_name
      description = var.hub_sg_description
      vpc         = module.vpc["hub"].output_vpc_id
      tags        = var.hub_sg_tags
    }
  }
  vpngw = {
    "hub" = {
      vpc  = module.vpc["hub"].output_vpc_id
      az   = "ca-central-1a"
      tags = var.hub_vpngw_tags
    }
  }
  custgw = {
    "hub" = {
      name = var.hub_custgw_name
      asn  = var.hub_custgw_asn
      ip   = var.hub_custgw_ip
      tags = var.hub_custgw_tags
    }
  }
  vpn_conn = {
    "hub" = {
      vpngw       = module.vpngw["hub"].output_vpngw_id
      custgw      = module.custgw["hub"].output_custgw_id
      remote_cidr = var.hub_vpn_conn_remote_cidr
      cloud_cidr  = module.vpc["hub"].output_vpc_cidr
      tags        = var.hub_vpn_conn_tags
    }
  }
  firewall = {
    "hub" = {
      name    = var.fw_name,
      vpc     = module.vpc["hub"].output_vpc_id
      snet    = module.snet["firewall"].output_snet_id
      targets = var.fw_targets
      tags    = var.fw_tags
    }
  }
}