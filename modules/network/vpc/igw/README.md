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
| igw_tags | Internet Gateway Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "igw" {
  source = "./modules/network/vpc/igw"
  vpc_id = module.hub-vpc.output_vpc_id
  igw_tags = {
    Name = "dev-hub-igw"
  }
}

```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_igw_id | Internet Gateway ID | String |
| output_igw_arn | Internet Gateway ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.igw.output_igw_id
```

```
module.igw.output_igw_arn
```