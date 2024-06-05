[Home](../../../../../../README.md)

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
| lb_arn | Load Balancer ARN | String | Yes | NA |
| lb_list_port | Load Balancer Redirect Listener Port | Number | No | **80** |
| lb_list_tags | Load Balancer Redirect Listener Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| lb_list_protocol | Load Balancer Redirect Listener Protocol.  For Application Load Balancers Valid Values are **HTTP** and **HTTPS**. For Network Load Balancers Valid Values are **TCP**, **TLS**, **UDP** and **TCP_UDP** | String | No | **TCP** |
| lb_tg_arn | Load Balancer Target Group ARN | String | Yes | NA |
| lb_list_redirect_path | Load Balancer Redirect Listener Path | String | No | **/** |
| lb_list_redirect_port | Load Balancer Redirect Listener Port | String | Yes | NA |
| lb_list_redirect_protocol | Load Balancer Redirect Listener Protocol. Valid Values are **HTTP** and **HTTPS** | String | No | **HTTP** |
| lb_list_redirect_status_code | Load Balancer Redirect Listener Status Code. Valid Values are **HTTP_301** and **HTTP_302** | String | No | **HTTP_301** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-lb-list-red" {
  source    = "./modules/compute/ec2/lb/listener/redirect"
  lb_arn    = module.dev-app-alb.outout_app_lb_arn
  lb_tg_arn = module.dev-app-alb-tg.output_lb_tg_arn
  lb_list_tags = {
    Name = "dev-lb-list-red"
  }
}
```

## Custom Values

```
module "dev-alb-list-red" {
  source                = "./modules/compute/ec2/lb/listener/redirect"
  lb_arn                = module.dev-app-alb.outout_app_lb_arn
  lb_tg_arn             = module.dev-app-alb-tg.output_lb_tg_arn
  lb_list_redirect_port = "8085"
  lb_list_protocol      = "HTTP"
  lb_list_redirect_path = "/dev-app"
  lb_list_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lb_list_id | Load Balancer Listener ID | String |
| output_lb_list_arn | Load Balancer Listenere ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-lb-list-red.output_lb_list_id
```

```
module.dev-lb-list-red.output_lb_list_arn
```