[Home](../../../../../../README.md)

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
| rt_id | Route Table ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt_snet_association" {
  source  = "./modules/network/vpc/route_table/association/subnet"
  rt_id   = module.hub-rt.output_rt_id
  snet_id = module.hub-snet-app.output_snet_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rt_snet_association_id | Route Table Subnet Association ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rt_snet_association.output_rt_snet_association_id
```