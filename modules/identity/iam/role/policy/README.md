[Home](../../../../../README.md)

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
| role_policy_name | IAM Role Policy Name | String | Yes | NA |
| role_id | IAM Role ID | String | Yes | NA |
| iam_role_policy | IAM Policy | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "role_policy" {
  source           = "./modules/identity/iam/role/policy"
  role_policy_name = "dev_ec2_role_ro_policy"
  role_id          = module.role.output_iam_role_id
  iam_role_policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement = [
        {
          Action = [
            "ec2:Describe*",
          ]
          Effect   = "Allow"
          Resource = "*"
        }
      ]
    }
  )
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_role_policy_id | IAM Role Policy ID | String |
| output_iam_role_policy_name | IAM Role Policy Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.role_policy.output_iam_role_policy_id
```

```
module.role_policy.output_iam_role_policy_name
```