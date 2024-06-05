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
| lb_list_port | Load Balancer Forward Listener Port | Number | No | **80** |
| lb_list_tags | Load Balancer Forward Listener Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| lb_list_protocol | Load Balancer Forward Listener Protocol.  For Application Load Balancers Valid Values are **HTTP** and **HTTPS**. For Network Load Balancers Valid Values are **TCP**, **TLS**, **UDP** and **TCP_UDP** | String | No | **TCP** |
| lb_tg_arn | Load Balancer Target Group ARN | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-lb-list-fwd" {
  source    = "./modules/compute/ec2/lb/listener/forward"
  lb_arn    = module.dev-app-int-nlb.output_internal_lb_arn
  lb_tg_arn = module.dev-app-lb-tg.output_lb_tg_arn
  lb_list_tags = {
    Name = "dev-lb-list-forward"
  }
}
```

## Custom Values

```
module "dev-lb-list-fwd" {
  source           = "./modules/compute/ec2/lb/listener/forward"
  lb_arn           = module.dev-app-int-alb.output_internal_lb_arn
  lb_tg_arn        = module.dev-app-alb-tg.output_lb_tg_arn
  lb_list_protocol = "HTTP"
  lb_list_tags     = var.tags
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
module.dev-lb-list-fwd.output_lb_list_id
```

```
module.dev-lb-list-fwd.output_lb_list_arn
```