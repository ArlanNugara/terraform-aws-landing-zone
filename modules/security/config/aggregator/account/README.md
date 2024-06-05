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
| aggregator_name | Config Aggregator Name | String | Yes | NA |
| aggregator_account_ids | Config Aggregator Account IDs | List | Yes | NA |
| aggregator_tags | Config Aggregator Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "account_aggregator" {
  source                 = "./modules/security/config/aggregator/account"
  aggregator_name        = "dev_config_acc_aggregator"
  aggregator_account_ids = [var.aws_account_id]
  aggregator_tags = {
    Name = "dev_config_acc_aggregator"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_config_aggregator_id | Config Aggregator ID | String |
| output_config_aggregator_arn | Config Aggregator ARN | String |


## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.account_aggregator.output_config_aggregator_id
```

```
module.account_aggregator.output_config_aggregator_arn
```