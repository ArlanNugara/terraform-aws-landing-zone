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
| config_rule_name | Config Rule Name | String | Yes | NA |
| config_rule_source_owner | Config Rule Source Owner. Valid values are **AWS**, **CUSTOM_LAMBDA** and **CUSTOM_POLICY** | String | No | **AWS** |
| config_rule_source_identifier | Config Rule Source Identifier. For **AWS** owner Config managed rules, a predefined identifier like **S3_BUCKET_VERSIONING_ENABLED** or **IAM_PASSWORD_POLICY** etc. For **CUSTOM_LAMBDA** owner rules, the identifier is the ARN of the Lambda Function, such as **arn:aws:lambda:us-east-1:123456789:function:custom_rule_name** | String | Yes | NA |
| config_rule_tags | Config Rule Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "config_rule" {
  source                        = "./modules/security/config/rule"
  config_rule_name              = "dev_config_rule_1"
  config_rule_source_identifier = "S3_BUCKET_VERSIONING_ENABLED"
  config_rule_tags = {
    Name = "dev_config_rule_1"
  }
}
```

## Custom Values

```
module "config_rule" {
  source                        = "./modules/security/config/rule"
  config_rule_name              = "dev_config_rule_1"
  config_rule_source_owner      = "CUSTOM_LAMBDA"
  config_rule_source_identifier = module.lambda.output_lambda_arn
  config_rule_tags = {
    Name = "dev_config_rule_1"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_config_rule_id | Config Rule ID | String |
| output_config_rule_arn | Config Rule ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.config_rule.output_config_rule_id
```

```
module.config_rule.output_config_rule_arn
```