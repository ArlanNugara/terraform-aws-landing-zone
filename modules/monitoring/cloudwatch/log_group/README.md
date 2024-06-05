[Home](../../../../README.md)

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
| log_group_name | CloudWatch Log Group Name | String | Yes | NA |
| log_group_class | CloudWatch Log Group Class. Valid Values are **STANDARD** and **INFREQUENT_ACCESS** | String | No | **STANDARD** |
| log_group_log_retension_days | CloudWatch Log Group Log Retension in Days | Number | No | **90** |
| log_group_tags | CloudWatch Log Group Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub_log_group" {
  source         = "./modules/monitoring/cloudwatch/log_group"
  log_group_name = "dev-cloudwatch-log-group"
  log_group_tags = {
    Name = "dev-cloudwatch-log-group"
  }
}
```

## Custom Values

```
module "hub_log_group" {
  source                       = "./modules/monitoring/cloudwatch/log_group"
  log_group_name               = "dev-cloudwatch-log-group"
  log_group_log_retension_days = 120
  log_group_tags = {
    Name = "dev-cloudwatch-log-group"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_log_group_id | CloudWatch Log Group ID | String |
| output_log_group_arn | CloudWatch Log Group ARN | String |
| output_log_group_name | CloudWatch Log Group Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub_log_group.output_log_group_id
```

```
module.hub_log_group.output_log_group_arn
```

```
module.hub_log_group.output_log_group_name
```