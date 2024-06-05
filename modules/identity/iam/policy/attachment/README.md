[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| policy_attach_name | IAM Policy Attachment Name | String | Yes | NA |
| policy_arn | IAM Policy ARN | String | Yes | NA |
| user_name | IAM User Name to Attach Policy. Any one of **user_name**, **role_name** or **group_name** must be specified | String | No | **null** |
| role_name | IAM Role Name to Attach Policy. Any one of **user_name**, **role_name** or **group_name** must be specified | String | No | **null** |
| group_name | IAM Group Name to Attach Policy. Any one of **user_name**, **role_name** or **group_name** must be specified | String | No | **null** |

# Calling the module

Below are examples of calling this module with values.

```
module "role_policy_attachment" {
  source             = "./modules/identity/iam/policy/attachment"
  policy_attach_name = "dev_ec2_ro_policy_attach_role"
  policy_arn         = module.policy.output_policy_arn
  role_name          = [module.role.output_iam_role_name]
}
```

```
module "user_policy_attachment" {
  source             = "./modules/identity/iam/policy/attachment"
  policy_attach_name = "dev_ec2_ro_policy_attach_user"
  policy_arn         = module.policy.output_policy_arn
  user_name          = [module.user.output_iam_user_name]
}
```

```
module "group_policy_attachment" {
  source             = "./modules/identity/iam/policy/attachment"
  policy_attach_name = "dev_ec2_ro_policy_attach_group"
  policy_arn         = module.policy.output_iam_policy_arn
  group_name         = [module.group.output_iam_group_name]
}
```

```
module "policy_attachment" {
  source             = "./modules/identity/iam/policy/attachment"
  policy_attach_name = "dev_ec2_ro_policy_attachment"
  policy_arn         = module.policy.output_iam_policy_arn
  user_name          = [module.user.output_iam_user_name]
  role_name          = [module.role.output_iam_role_name]
  group_name         = [module.group.output_iam_group_name]
}
```

# Output

No Output.