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
| lb_name | External Network Load Balancer Name | String | Yes | NA |
| lb_external_tags | External Network Load Balancer Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| lb_snet_id | External Network Load Balancer Subnet ID | String | Yes | NA |
| lb_eip_id | External Load Balancer Elastic IP ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "dev-web-ext-nlb" {
  source     = "./modules/compute/ec2/lb/external"
  lb_name    = "dev-web-ext-nlb"
  lb_snet_id = module.dev-web-snet.output_snet_id
  lb_eip_id  = module.dev-web-eip.output_eip_id
  lb_external_tags = {
    Name = "dev-web-ext-nlb"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_external_lb_id | External Network Load Balancer ID | String |
| output_external_lb_arn | External Network Load Balancer ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-web-ext-nlb.output_external_lb_id
```

```
module.dev-web-ext-nlb.output_external_lb_arn
```