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
| vpc_address | VPC Address Space | String | Yes | NA |
| vpc_tenacy | A tenancy option for instances launched into the VPC. Valid values are **default** and **dedicated** | String | No | **default** | 
| vpc_dns_support | A boolean flag to enable/disable DNS support in the VPC | Boolean | No | **true** |
| vpc_dns_hostname | A boolean flag to enable/disable DNS hostnames in the VPC | Boolean | No | **true** |
| vpc_usage_metrics | Indicates whether Network Address Usage metrics are enabled for your VPC | Boolean | No | **true** |
| vpc_tags | VPC Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "vpc" {
  source      = "./modules/network/vpc"
  vpc_address = var.vpc_address_space
  vpc_tags = {
    Name = "dev-vpc"
  }
}
```

## Custom Values

```
module "vpc" {
  source            = "./modules/network/vpc"
  vpc_address       = "172.16.0.0/16"
  vpc_dns_hostname  = false
  vpc_usage_metrics = false
  vpc_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_id | VPC ID | String |
| output_vpc_arn | VPC ARN | String |
| output_vpc_cidr | VPC CIDR | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vpc.output_vpc_id
```

```
module.vpc.output_vpc_arn
```

```
module.vpc.output_vpc_cidr
```