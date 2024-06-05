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
| vpc_id | VPC ID | String | Yes | NA |
| rt_tags | Route Table Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt" {
  source = "./modules/network/vpc/route_table"
  vpc_id = module.hub-vpc.output_vpc_id
  rt_tags = {
    Name = "dev-hub-rt"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rt_id | Route Table ID | String |
| output_rt_arn | Route Table ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rt.output_rt_id
```

```
module.rt.output_rt_arn
```