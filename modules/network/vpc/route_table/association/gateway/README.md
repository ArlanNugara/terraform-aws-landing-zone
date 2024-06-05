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
| igw_id | Internet Gateway ID | String | Yes | NA |
| rt_id | Route Table ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt_igw_association" {
  source = "./modules/network/vpc/route_table/association/gateway"
  rt_id  = module.hub-rt.output_rt_id
  igw_id = module.hub-igw.output_igw_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rt_igw_association_id | Route Table Internet Gateway Association ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rt_igw_association.output_rt_igw_association_id
```