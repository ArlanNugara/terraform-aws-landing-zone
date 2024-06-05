[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| log_resource_policy_name | CloudWatch Log Resource Policy Name | String | Yes | NA |
| log_resource_policy_document | CloudWatch Log Resource Policy Document | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both values.

```
data "aws_iam_policy_document" "hub_resource_policy" {
  statement {
    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:PutLogEventsBatch",
    ]

    resources = ["arn:aws:logs:*"]

    principals {
      identifiers = [
        "es.amazonaws.com",
        "ec2.amazonaws.com"
      ]
      type = "Service"
    }
  }
}

module "hub_resource_policy" {
  source                       = "./modules/monitoring/cloudwatch/resource_policy"
  log_resource_policy_name     = "dev-cloudwatch-log-resource-policy"
  log_resource_policy_document = data.aws_iam_policy_document.hub_resource_policy.json
}
```

# Output

No Output