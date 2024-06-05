[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| custgw_device_name | Customer Gateway Device Name | String | Yes | NA |
| custgw_bgp_asn | Customer Gateway BGP ASN Number | Number | Yes | NA |
| custgw_ip | On-Premise Public IP to connect to | String | Yes | NA |
| custgw_tags | Customer Gateway Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "hub-custgw" {
  source             = "./modules/network/vpn/customer_gateway"
  custgw_device_name = "dev-hub-custgw"
  custgw_bgp_asn     = 600000
  custgw_ip          = "103.220.210.252"
  custgw_tags = {
    Name = "dev-hub-custgw"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_custgw_id | Customer Gateway ID | String |
| output_custgw_arn | Customer Gateway ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-custgw.output_custgw_id
```

```
module.hub-custgw.output_custgw_arn
```