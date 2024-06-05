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
| lb_name | Internal Network Load Balancer Name | String | Yes | NA |
| lb_internal_tags | Internal Network Load Balancer Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| lb_snet_id | Internal Network Load Balancer Subnet ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "dev-app-int-nlb" {
  source     = "./modules/compute/ec2/lb/internal"
  lb_name    = "dev-app-int-nlb"
  lb_snet_id = module.dev-app-snet.output_snet_id
  lb_internal_tags = {
    Name = "dev-app-int-nlb"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_internal_lb_id | Internal Network Load Balancer ID | String |
| output_internal_lb_arn | Internal Network Load Balancer ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-app-int-nlb.output_internal_lb_id
```

```
module.dev-app-int-nlb.output_internal_lb_arn
```