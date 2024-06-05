[Home](../../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| membership_name | IAM Group Membership Name | String | Yes | NA |
| user_names | IAM User Names to join the Group | List | Yes | NA |
| group_name | IAM Group Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "ec2_group_mem" {
  source          = "./modules/identity/iam/management/group/membership"
  membership_name = "dev-ec2-group-users"
  user_names      = [module.user.output_iam_user_name]
  group_name      = module.group.output_iam_group_name
}
```

# Output

No Output.