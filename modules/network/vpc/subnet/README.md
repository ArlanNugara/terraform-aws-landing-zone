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
| vpc_id | VPC ID | String | Yes | NA |
| snet_address_space | Subnet Address Space | String | Yes | NA |
| snet_pip | Boolean value to indicate that instances launched into the subnet should be assigned a public IP address or not | Boolean | No | **false** |
| snet_az | Subnet Availablity Zone | String | No | **us-east-1a** |
| snet_tags | Subnet Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "snet" {
  source             = "./modules/network/vpc/subnet"
  vpc_id             = module.vpc.output_vpc_id
  snet_address_space = "172.16.1.0/24"
  snet_tags = {
    "Name" = "dev-snet"
  }
}
```

## Custom Values

```
module "snet" {
  source             = "./modules/network/vpc/subnet"
  vpc_id             = module.vpc.output_vpc_id
  snet_address_space = var.snet_address_space
  snet_az            = "us-east-1b"
  snet_pip           = true
  snet_tags          = var.tags
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_snet_id | Subnet ID | String |
| output_snet_arn | Subnet ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.snet.output_snet_id
```

```
module.snet.output_snet_arn
```