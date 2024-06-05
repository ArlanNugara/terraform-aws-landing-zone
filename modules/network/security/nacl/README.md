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
| nacl_subnet_ids | Subnet IDs | String | Yes | NA |
| nacl_tags | Network ACL Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "hub-nacl" {
  source          = "./modules/network/security/nacl"
  vpc_id          = module.hub-vpc.output_vpc_id
  nacl_subnet_ids = [module.hub-snet.output_snet_id]
  nacl_tags = {
    Name = "dev-hub-nacl"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nacl_id | Network ACL ID | String |
| output_nacl_arn | Network ACL ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nacl.output_nacl_id
```

```
module.nacl.output_nacl_arn
```