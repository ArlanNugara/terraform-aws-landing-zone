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
| eip_id | Elastic IP Allocation ID | String | Yes | NA |
| snet_id | Subnet ID | String | Yes | NA |
| public_natgw_tags | Public NAT Gateway Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "public_natgw" {
  source  = "./modules/network/vpc/nat_gateway/public"
  eip_id  = module.hub-ntgw-eip.output_eip_allocation_id
  snet_id = module.hub-ntgw-snet.output_snet_id
  public_natgw_tags = {
    Name = "dev-public-natgw"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_public_natgw_id | Public NAT Gateway ID | String |
| output_public_natgw_eip | Public NAT Gateway Private IP | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.public_natgw.output_public_natgw_id
```

```
module.public_natgw.output_public_natgw_eip
```