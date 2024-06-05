[Home](../../../../README.md)

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
| remote_vpc_id | Remote VPC ID | String | Yes | NA |
| source_vpc_id | Source VPC ID | String | Yes | NA |
| vpc_peering_tags | VPC Peering Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "peering" {
  source        = "./modules/network/vpc/peering"
  source_vpc_id = module.hub-vpc.output_vpc_id
  remote_vpc_id = module.dev-vpc.output_vpc_id
  vpc_peering_tags = {
    Name = "Hub-Dev"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_peering_id | VPC Peering ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.peering.output_vpc_peering_id
```