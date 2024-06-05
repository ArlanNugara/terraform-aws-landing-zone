[Home](../../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| user_name | IAM User Name | String | Yes | NA |
| group_names | Group Names to Join | List | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "user_mem" {
  source      = "./modules/identity/iam/management/user/membership"
  user_name   = module.user.output_iam_user_name
  group_names = [module.group.output_iam_group_id]
}
```

# Output

No Output.