[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| lb_app_name | Application Load Balancer Name | String | Yes | NA |
| lb_app_sg_ids | Application Load Balancer Security Group IDs | List | Yes | NA |
| lb_app_snet_ids | Application Load Balancer Subnet ID | String | Yes | NA |
| lb_app_invalid_header | Application Load Balancer Drop Invalid Header Boolean | Boolean | No | **false** |
| lb_app_cipher_suite | Application Load Balancer TLS Version and Cypher Suite Header Boolean | Boolean | No | **false** |
| lb_app_http2 | Application Load Balancer HTTP2 protocol Boolean | Boolean | No | **true** |
| lb_app_xff_client_port | Application Load Balancer XFF Client Port Boolean | Boolean | No | **false** |
| lb_app_idle_timeout | Application Load Balancer Idle Timeout | Number | No | **30** |
| lb_app_host_header_preservation | Application Load Balancer Host Header Perservation Boolean | Boolean | No | **false** |
| lb_app_xff_header_mode | Application Load Balancer XFF Header Processing Mode. Valid values are **append**, **preserve** and **remove** | String | No | **preserve** |
| lb_app_tags | Application Load Balancer Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-lb-app" {
  source          = "./modules/compute/ec2/lb/application"
  lb_app_name     = "dev-lb-app"
  lb_app_sg_ids   = [module.dev-sg.output_sg_id]
  lb_app_snet_ids = [module.dev-snet-1.output_snet_id, module.dev-snet-2.output_snet_id]
  lb_app_tags = {
    Name = "dev-lb-app"
  }
}
```

## Custom Values

```
module "dev-lb-app" {
  source                 = "./modules/compute/ec2/lb/application"
  lb_app_name            = var.name
  lb_app_sg_ids          = [module.dev-sg.output_sg_id]
  lb_app_idle_timeout    = 60
  lb_app_xff_header_mode = "append"
  lb_app_snet_ids        = [module.dev-snet-1.output_snet_id, module.dev-snet-2.output_snet_id]
  lb_app_tags            = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| outout_app_lb_id | Application Load Balancer ID | String |
| outout_app_lb_arn | Application Load Balancer ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-lb-app.outout_app_lb_id
```

```
module.dev-lb-app.outout_app_lb_arn
```