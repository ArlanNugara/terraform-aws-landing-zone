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
| lb_tg_name | Load Balancer Target Group Name | String | Yes | NA |
| lb_tg_port | Load Balancer Target Group Port | Number | No | **80** |
| lb_tg_protocol | Load Balancer Target Group Protocol. Valid values are **GENEVE**, **HTTP**, **HTTPS**, **TCP**, **TCP_UDP**, **TLS** and **UDP** | String | No | **TCP** |
| lb_tg_protocol_version | Load Balancer Target Group Protocol Version. Valid values are **HTTP** and **HTTPS** | String | No | **null** |
| lb_tg_target_type | Load Balancer Target Group Target Type. Valid values are **instance**, **ip** and **alb** | String | No | **ip** |
| lb_tg_algo_type | Load Balancer Target Group Algorithm Type. Valid values are **round_robin**, **least_outstanding_requests**, or **weighted_random** | String | No | **null** |
| lb_tg_address_type | Load Balancer Target Group Address Type. Valid values are **ipv4** and **ipv6**. Only valid if **lb_tg_target_type** is set to **ip** | String | No | **null** |
| lb_tg_cross_zone | Load Balancer Target Group Cross Zone Enabled. Valid values are **true**, **false** and **use_load_balancer_configuration** | String | No | **use_load_balancer_configuration** |
| lb_tg_preserve_client_ip | Load Balancer Target Group Client IP Preservation | Boolean | No | **null** |
| vpc_id | VPC ID | String | Yes | NA |
| lb_tg_tags | Load Balancer Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| lb_tg_hc_path | Load Balancer Target Group Health Check Path | String | No | **null** |
| lb_tg_hc_protocol | Load Balancer Target Group Health Check Protocol. Valid values are **TCP**, **HTTP** and **HTTPS**. The **TCP** protocol is not supported for health checks if the protocol is **HTTP** or **HTTPS** | String | No | **TCP** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-app-lb-tg" {
  source     = "./modules/compute/ec2/lb/target_group"
  lb_tg_name = "dev-app-lb-tg"
  vpc_id     = module.dev-vpc.output_vpc_id
  lb_tg_tags = {
    Name = "dev-app-lb-tg"
  }
}
```

## Custom Values

```
module "dev-app-lb-tg" {
  source                 = "./modules/compute/ec2/lb/target_group"
  lb_tg_name             = var.name
  vpc_id                 = module.dev-vpc.output_vpc_id
  lb_tg_protocol         = "HTTP"
  lb_tg_protocol_version = "HTTP2"
  lb_tg_target_type      = "instance"
  lb_tg_hc_path          = "/app"
  lb_tg_hc_protocol      = "HTTP"
  lb_tg_tags             = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lb_tg_id | Load Balancer Target Group ID | String |
| output_lb_tg_arn | Load Balancer Target Group ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-app-lb-tg.output_lb_tg_id
```

```
module.dev-app-lb-tg.output_lb_tg_arn
```