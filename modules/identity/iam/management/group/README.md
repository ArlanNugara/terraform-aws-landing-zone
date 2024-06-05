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
| group_name | IAM Group Name | String | Yes | NA |
| group_path | IAM Group Path | String | No | **/** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "group" {
  source     = "./modules/identity/iam/management/group"
  group_name = "dev-ec2-group"
}
```

## Custom Values

```
module "group" {
  source     = "./modules/identity/iam/management/group"
  group_name = var.name
  group_path = "/group/ec2"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_group_id | IAM Group ID | String |
| output_iam_group_arn | IAM Group ARN | String |
| output_iam_group_name | IAM Group Name | String |
| output_iam_group_unique_id | IAM Group Unique ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.group.output_iam_group_id
```

```
module.group.output_iam_group_arn
```

```
module.group.output_iam_group_name
```

```
module.group.output_iam_group_unique_id
```