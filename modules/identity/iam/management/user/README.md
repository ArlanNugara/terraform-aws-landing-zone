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
| user_name | IAM User Name | String | Yes | NA |
| user_path | IAM User Path | String | No | **/** |
| user_tags | IAM User Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "ec2_user" {
  source    = "./modules/identity/iam/management/user"
  user_name = "dev-ec2-user"
  user_tags = {
    Name = "dev-ec2-user"
  }
}
```

## Custom Values

```
module "user" {
  source    = "./modules/identity/iam/management/user"
  user_name = var.name
  user_tags = var.tags
  user_path = "/user"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_user_id | IAM User ID | String |
| output_iam_user_arn | IAM User ARN | String |
| output_iam_user_name | IAM User Name | String |
| output_iam_user_unique_id | IAM User Unique ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.user.output_iam_user_id
```

```
module.user.output_iam_user_arn
```

```
module.user.output_iam_user_name
```

```
module.user.output_iam_user_unique_id
```