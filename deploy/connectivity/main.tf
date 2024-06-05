module "vpc" {
  source      = "../../modules/network/vpc"
  for_each    = local.vnet
  vpc_address = each.value.address
  vpc_tags    = each.value.tags
}

module "peering" {
  source        = "../../modules/network/vpc/peering"
  for_each      = local.peering
  source_vpc_id = each.value.source_vpc_id
  remote_vpc_id = each.value.remote_vpc_id
}

module "igw" {
  source   = "../../modules/network/vpc/igw"
  for_each = local.igw
  vpc_id   = each.value.vpc
  igw_tags = each.value.tags
}

module "dhcp_option" {
  source        = "../../modules/network/vpc/dhcp_option"
  for_each      = local.dhcp_option
  vpc_dhcp_tags = each.value.tags
}

module "dhcp_association" {
  source      = "../../modules/network/vpc/dhcp_option/vpc_association"
  for_each    = local.dhcp_association
  vpc_id      = each.value.vpc
  vpc_dhcp_id = each.value.dhcp
}

module "snet" {
  source             = "../../modules/network/vpc/subnet"
  for_each           = local.snet
  snet_address_space = each.value.address
  snet_az            = each.value.az
  vpc_id             = each.value.vpc
  snet_tags          = each.value.tags
}

module "route_table" {
  source   = "../../modules/network/vpc/route_table"
  for_each = local.main_route_table
  vpc_id   = each.value.vpc
  rt_tags  = each.value.tags
}

module "rt_snet_association" {
  source   = "../../modules/network/vpc/route_table/association/subnet"
  for_each = local.rt_association
  rt_id    = each.value.rt
  snet_id  = each.value.snet
}

module "rt_route" {
  source             = "../../modules/network/vpc/route_table/route"
  for_each           = local.rt_association
  rt_id              = each.value.rt
  rt_route_dest_cidr = each.value.cidr
  igw_id             = each.value.igw
}

module "nacl" {
  source          = "../../modules/network/security/nacl"
  for_each        = local.nacl
  vpc_id          = each.value.vpc
  nacl_subnet_ids = each.value.snet
  nacl_tags       = each.value.tags
}

module "nacl_rule" {
  source              = "../../modules/network/security/nacl/rules"
  for_each            = local.nacl_rules
  nacl_rule_action    = each.value.action
  nacl_rule_protocol  = each.value.protocol
  nacl_rule_egress    = each.value.egress
  nacl_id             = each.value.nacl
  nacl_rule_number    = each.value.rule
  nacl_rule_cidr      = each.value.cidr
  nacl_rule_from_port = each.value.from_port
  nacl_rule_to_port   = each.value.to_port
}

module "sg" {
  source         = "../../modules/network/security/sg"
  for_each       = local.sg
  sg_name        = each.value.name
  sg_description = each.value.description
  vpc_id         = each.value.vpc
  sg_tags        = each.value.tags
}

module "vpngw" {
  source     = "../../modules/network/vpn"
  for_each   = local.vpngw
  vpc_id     = each.value.vpc
  vpngw_az   = each.value.az
  vpngw_tags = each.value.tags
}

module "custgw" {
  source             = "../../modules/network/vpn/customer_gateway"
  for_each           = local.custgw
  custgw_device_name = each.value.name
  custgw_bgp_asn     = each.value.asn
  custgw_ip          = each.value.ip
  custgw_tags        = each.value.tags
}

module "conn" {
  source        = "../../modules/network/vpn/connection"
  for_each      = local.vpn_conn
  vpngw_id      = each.value.vpngw
  custgw_id     = each.value.custgw
  custgw_cidr   = each.value.remote_cidr
  cloud_cidr    = each.value.cloud_cidr
  vpn_conn_tags = each.value.tags
}