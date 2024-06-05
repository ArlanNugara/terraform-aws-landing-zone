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
| vpc_dhcp_dns | List of DNS Name Servers | List | No | **AmazonProvidedDNS** |
| vpc_dhcp_ntp | List of NTP Servers | List | No | **[ ]** |
| vpc_dhcp_tags | VPC DHCP Option Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "vpc_dhcp" {
  source = "./modules/network/vpc/dhcp_option"
  vpc_dhcp_tags = {
    Name = "dev-vpc-dhcp-option"
  }
}
```

## Custom Values

```
module "vpc_dhcp" {
  source        = "./modules/network/vpc/dhcp_option"
  vpc_dhcp_dns  = ["172.16.0.53", "8.8.8.8"]
  vpc_dhcp_ntp  = [""127.0.0.1"]
  vpc_dhcp_tags = var.tags
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_dhcp_id | VPC DHCP Option ID | String |
| output_vpc_dhcp_arn | VPC DHCP Option ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vpc_dhcp.output_vpc_dhcp_id
```

```
module.vpc_dhcp.output_vpc_dhcp_arn
```