// VPN Connection

resource "aws_vpn_connection" "vpn_conn" {
  vpn_gateway_id           = var.vpngw_id
  customer_gateway_id      = var.custgw_id
  local_ipv4_network_cidr  = var.custgw_cidr
  remote_ipv4_network_cidr = var.cloud_cidr
  type                     = "ipsec.1"
  static_routes_only       = var.vpn_conn_static_routes
  tags = merge(
    {
      Name = var.vpn_conn_name
    },
    var.default_tags
  )
}