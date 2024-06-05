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
| policy_name | IAM Policy Name | String | Yes | NA |
| policy_path | IAM Policy Path | String | No | **/** |
| policy_description | IAm Policy Description | String | Yes | NA |
| policy | IAM Policy | String | Yes | NA |
| policy_tags | IAM Policy Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "policy" {
  source             = "./modules/identity/iam/policy"
  policy_name        = "dev-rw-ec2-policy"
  policy_description = "dev EC2 Write Policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  policy_tags = {
    Name = "dev-rw-ec2-policy"
  }
}
```

## Custom Values

```
module "policy" {
  source             = "./modules/identity/iam/policy"
  policy_name        = var.name
  policy_path        = "/user/policy/ec2"
  policy_description = var.description
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  policy_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_policy_id | IAM Policy ID | String |
| output_iam_policy_arn | IAM Policy ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.policy.output_iam_policy_id
```

```
module.policy.output_iam_policy_arn
```