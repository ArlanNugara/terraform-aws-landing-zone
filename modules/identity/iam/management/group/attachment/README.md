[Home](../../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| policy_arn | IAM Policy ARN | String | Yes | NA |
| group_name | IAM Group Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "group_policy_attachment" {
  source     = "./modules/identity/iam/management/group/attachment"
  group_name = module.group.output_iam_group_name
  policy_arn = module.policy.output_iam_policy_arn
}

```

# Output

No Output.