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
| igw_id | Internet Gateway ID | String | Yes | NA |
| rt_id | Route Table ID | String | Yes | NA |
| rt_route_dest_cidr | Route Table Route Destination CIDR Address | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt_route" {
  source             = "./modules/network/vpc/route_table/route"
  rt_id              = module.hub-rt.output_rt_id
  rt_route_dest_cidr = "0.0.0.0/0"
  igw_id             = module.hub-igw.output_igw_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rt_route_id | Route Table Route ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rt_route.output_rt_route_id
```