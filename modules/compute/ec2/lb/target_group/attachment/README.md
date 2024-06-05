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
| lb_tg_arn | Load Balancer Target Group ARN | String | Yes | NA |
| lb_tg_attachment_target_id | Load Balancer Target Group Target ID. Ex - Instance IP | String | Yes | NA |
| lb_tg_attachment_port | Load Balancer Target Group Attachment Port | Number | No | **80** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-lb-tg-attachment" {
  source                     = "./modules/compute/ec2/lb/target_group/attachment"
  lb_tg_arn                  = module.dev-app-lb-tg.output_lb_tg_id
  lb_tg_attachment_target_id = module.dev-app1-instance.output_instance_ip
}
```

## Custom Values

```
module "dev-lb-tg-attachment" {
  source                     = "./modules/compute/ec2/lb/target_group/attachment"
  lb_tg_arn                  = module.dev-app-lb-tg.output_lb_tg_id
  lb_tg_attachment_target_id = module.dev-app1-instance.output_instance_ip
  lb_tg_attachment_port      = 8080
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lb_tg_attachment_id | Load Balancer Target Group Attachment ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-lb-tg-attachment.output_lb_tg_attachment_id
```