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
| log_stream_name | CloudWatch Log Stream Name | String | Yes | NA |
| log_group_name | CloudWatch Log Group Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both values.

```
module "hub_log_stream" {
  source          = "./modules/monitoring/cloudwatch/log_stream"
  log_stream_name = "dev-cloudwatch-log-stream"
  log_group_name  = module.hub_log_group.output_log_group_name
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_log_stream_id | CloudWatch Log Stream ID | String |
| output_log_stream_arn | CloudWatch Log Stream ARN | String |
| output_log_stream_name | CloudWatch Log Stream Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub_log_stream.output_log_stream_id
```

```
module.hub_log_stream.output_log_stream_arn
```

```
module.hub_log_stream.output_log_stream_name
```