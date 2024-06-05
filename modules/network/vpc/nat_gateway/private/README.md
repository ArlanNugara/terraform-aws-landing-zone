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
| snet_id | Subnet ID | String | Yes | NA |
| private_natgw_tags | Private NAT Gateway Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "private_natgw" {
  source  = "./modules/network/vpc/nat_gateway/private"
  snet_id = module.hub-snet.output_snet_id
  private_natgw_tags = {
    Name = "dev-private-natgw"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_private_natgw_id | Private NAT Gateway ID | String |
| output_private_natgw_ip | Private NAT Gateway Private IP | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.private_natgw.output_private_natgw_id
```

```
module.private_natgw.output_private_natgw_ip
```