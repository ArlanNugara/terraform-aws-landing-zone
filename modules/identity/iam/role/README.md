[Home](../../../../README.md)

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
| role_name | IAM Role Name | String | Yes | NA |
| role_description | IAM Role Description | String | Yes | NA |
| role_policy | IAM Role Policy | String | Yes | NA |
| role_tags | IAM Role Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "role" {
  source           = "./modules/identity/iam/role"
  role_name        = "dev_ec2_ro"
  role_description = "dev EC2 Read Only Role"
  role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
  role_tags = {
    Name = "dev_ec2_ro"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_role_id | IAM Role ID | String |
| output_iam_role_arn | IAM Role ID | String |
| output_iam_role_name | IAM Role ID | String |
| output_iam_role_unique_id | IAM Role ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.role.output_iam_role_id
```

```
module.role.output_iam_role_arn
```

```
module.role.output_iam_role_name
```

```
module.role.output_iam_role_unique_id
```