[Home](../../../README.md)

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
| secret_name | Secret Name | String | Yes | NA |
| secret_retention | Number of days Secrets Manager waits before it can delete the secret | Number | No | **15** |
| secret_replica_region | Region name for replica | String | No | **null** |
| secret_value | Value of the Secret | String | Yes | NA |
| secret_tags | Secret Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev_rds_username_password" {
  source       = "./modules/security/secrets_manager"
  secret_name  = "dev_rds_username"
  secret_value = "Some Secret Value. Do not Hardcode here"
  secret_tags = {
    Name = "dev_rds_username"
  }
}
```

## Custom Values

```
module "dev_rds_username_password" {
  source                = "./modules/security/secrets_manager"
  secret_name           = "dev_rds_username"
  secret_retention      = 10
  secret_replica_region = "us-west-1"
  secret_value          = "Some Secret Value. Do not Hardcode here"
  secret_tags = {
    Name = "dev_rds_username"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_secret_id | Secret ID | String |
| output_secret_arn | Secret ARN | String |
| output_secret_name | Secret Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev_rds_username_password.output_secret_id
```

```
module.dev_rds_username_password.output_secret_arn
```

```
module.dev_rds_username_password.output_secret_name
```