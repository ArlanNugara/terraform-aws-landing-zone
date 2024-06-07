module "vpc" {
  source       = "../../modules/network/vpc"
  for_each     = local.vpc
  vpc_name     = each.value.name
  vpc_address  = each.value.address
  default_tags = var.default_tags
}

module "peering" {
  source        = "../../modules/network/vpc/peering"
  for_each      = local.peering
  peering_name  = each.key
  source_vpc_id = each.value.source_vpc_id
  remote_vpc_id = each.value.remote_vpc_id
  default_tags  = var.default_tags
}

module "igw" {
  source       = "../../modules/network/vpc/igw"
  for_each     = local.igw
  igw_name     = each.value.name
  vpc_id       = each.value.vpc
  default_tags = var.default_tags
}

module "dhcp_option" {
  source           = "../../modules/network/vpc/dhcp_option"
  for_each         = local.dhcp_option
  dhcp_option_name = each.value.name
  default_tags     = var.default_tags
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
  snet_name          = each.value.name
  snet_address_space = each.value.address
  snet_az            = each.value.az
  vpc_id             = each.value.vpc
  default_tags       = var.default_tags
}

module "route_table" {
  source       = "../../modules/network/vpc/route_table"
  for_each     = local.main_route_table
  rt_name      = each.value.name
  vpc_id       = each.value.vpc
  default_tags = var.default_tags
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
  nacl_name       = each.value.name
  vpc_id          = each.value.vpc
  nacl_subnet_ids = each.value.snet
  default_tags    = var.default_tags
}

module "sg" {
  source         = "../../modules/network/security/sg"
  for_each       = local.sg
  sg_name        = each.value.name
  sg_description = each.value.description
  vpc_id         = each.value.vpc
  default_tags   = each.value.tags
}

module "vpngw" {
  source       = "../../modules/network/vpn"
  for_each     = local.vpngw
  vpngw_name   = each.value.name
  vpc_id       = each.value.vpc
  vpngw_az     = each.value.az
  default_tags = var.default_tags
}

module "custgw" {
  source             = "../../modules/network/vpn/customer_gateway"
  for_each           = local.custgw
  custgw_device_name = each.value.name
  custgw_bgp_asn     = each.value.asn
  custgw_ip          = each.value.ip
  default_tags       = var.default_tags
}

module "conn" {
  source        = "../../modules/network/vpn/connection"
  for_each      = local.vpn_conn
  vpn_conn_name = each.value.name
  vpngw_id      = each.value.vpngw
  custgw_id     = each.value.custgw
  custgw_cidr   = each.value.remote_cidr
  cloud_cidr    = each.value.cloud_cidr
  default_tags  = var.default_tags
}

module "firewall" {
  source       = "../../modules/network/security/firewall"
  for_each     = local.firewall
  fw_name      = each.value.name
  default_tags = var.default_tags
  vpc_id       = each.vaule.vpc
  snet_id      = each.value.snet
  targets      = each.value.targets
}