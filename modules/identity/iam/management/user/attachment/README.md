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
| user_name | IAM User Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "user_policy_Attachment" {
  source     = "./modules/identity/iam/management/user/attachment"
  user_name  = module.user.output_iam_user_name
  policy_arn = module.policy.output_iam_policy_arn
}
```

# Output

No Output.