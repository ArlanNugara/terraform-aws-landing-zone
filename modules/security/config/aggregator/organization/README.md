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
| aggregator_name | Config Aggregator Name | String | Yes | NA |
| role_arn | IAM Role ARN | String | Yes | NA |
| aggregator_tags | Config Aggregator Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "cr-role" {
  source           = "./modules/identity/iam/role"
  role_name        = "dev_config_role"
  role_description = "dev Config Role"
  role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "config.amazonaws.com"
        }
      }
    ]
  })
  role_tags = {
    Name = "dev_config_role"
  }
}

resource "aws_iam_role_policy_attachment" "org_agg_attach" {
  role       = module.cr-role.output_iam_role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations"
}

module "org_aggregator" {
  source          = "./modules/security/config/aggregator/organization"
  aggregator_name = "dev_config_org_aggregator"
  role_arn        = module.cr-role.output_iam_role_arn
  aggregator_tags = {
    Name = "dev_config_org_aggregator"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_config_aggregator_id | Config Aggregator ID | String |
| output_config_aggregator_arn | Config Aggregator ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.org_aggregator.output_config_aggregator_id
```

```
module.org_aggregator.output_config_aggregator_arn
```