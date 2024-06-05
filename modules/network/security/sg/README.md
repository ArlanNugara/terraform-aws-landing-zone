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
| sg_name | Security Group Name | String | Yes | NA |
| sg_description | Security Group Description | String | Yes | NA |
| vpc_id | VPC ID | String | Yes | NA |
| sg_tags | Security Group Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "hub-sg" {
  source         = "./modules/network/security/sg"
  sg_name        = "dev-hub-snet-sg"
  sg_description = var.sg_description
  vpc_id         = module.hub-vpc.output_vpc_id
  sg_tags = {
    Name = "dev-hub-snet-sg"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sg_id | Security Group ID | String |
| output_sg_arn | Security Group ARN | String |
| output_sg_name | Security Group Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-sg.output_sg_id
```

```
module.hub-sg.output_sg_arn
```

```
module.hub-sg.output_sg_name
```