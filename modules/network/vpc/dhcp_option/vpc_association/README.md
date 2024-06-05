[Home](../../../../../README.md)

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
| vpc_id | VPC ID | String | Yes | NA |
| vpc_dhcp_id | VPC DHCP Option ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "vpc_dhcp_association" {
  source      = "./modules/network/vpc/dhcp_option/vpc_association"
  vpc_id      = module.vpc.output_vpc_id
  vpc_dhcp_id = module.vpc_dhcp.output_vpc_dhcp_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_dhcp_association_id | VPC DHCP Option Association ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vpc_dhcp_association.output_vpc_dhcp_association_id
```