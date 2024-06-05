[Home](../../../README.md)

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
| vpc_id | VPC ID | String | Yes | NA |
| vpngw_az | VPN Gateway Availability Zone | String | No | **us-east-1a** |
| vpngw_tags | VPN Gateway Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-vpngw" {
  source = "./modules/network/vpn"
  vpc_id = module.vpc.output_vpc_id
  vpngw_tags = {
    Name = "dev-hub-vpn"
  }
}
```

## Custom Values

```
module "hub-vpngw" {
  source     = "./modules/network/vpn"
  vpc_id     = module.vpc.output_vpc_id
  vpngw_az   = "us-east-1b"
  vpngw_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpngw_id | VPN Gateway ID | String |
| output_vpngw_arn | VPN Gateway ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-vpngw.output_vpngw_id
```

```
module.hub-vpngw.output_vpngw_arn
```