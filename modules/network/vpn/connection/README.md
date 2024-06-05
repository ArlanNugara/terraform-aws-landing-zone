[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| vpngw_id | VPN Gateway ID | String | Yes | NA |
| custgw_id | Customer Gateway ID | String | Yes | NA |
| custgw_cidr | The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection | String | Yes | NA |
| cloud_cidr | The IPv4 CIDR on the AWS side of the VPN connection | String | Yes | NA |
| vpn_conn_static_routes | VPN Connection Static Routes | Boolean | No | **false** |
| vpn_conn_tags | VPN Connection Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-vpn-conn" {
  source      = "./modules/network/vpn/connection"
  vpngw_id    = module.vpngw.output_vpngw_id
  custgw_id   = module.custgw.output_custgw_id
  custgw_cidr = "100.100.100.0/24"
  cloud_cidr  = "172.16.0.0/16"
  vpn_conn_tags = {
    Name = "dev-hub-vpn-conn"
  }
}
```

## Custom Values

```
module "hub-vpn-conn" {
  source                 = "./modules/network/vpn/connection"
  vpngw_id               = module.vpngw.output_vpngw_id
  custgw_id              = module.custgw.output_custgw_id
  custgw_cidr            = var.remote_ip_cidr
  cloud_cidr             = var.cloud_ip_cidr
  vpn_conn_static_routes = true
  vpn_conn_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| ouput_vpn_conn_id | VPN Connection ID | String |
| ouput_vpn_conn_arn | VPN Connection ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-vpn-conn.ouput_vpn_conn_id
```

```
module.hub-vpn-conn.ouput_vpn_conn_arn
```