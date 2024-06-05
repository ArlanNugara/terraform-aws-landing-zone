[Home](../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Tags Policy](#tags-policy)
    - [Location Policy](#location-policy)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| policy_name | Organization Policy Name | String | Yes | NA |
| policy_description | Organization Policy Description | String | Yes | NA |
| policy_content | Organization Policy  | String | Yes | NA |
| policy_type | Organization Policy Type. Valid values are **AISERVICES_OPT_OUT_POLICY**, **BACKUP_POLICY**, **SERVICE_CONTROL_POLICY** and **TAG_POLICY** | 
| target_id | The ID of the root, organizational unit or account number that this policy is attached | String | Yes | NA |
| policy_tags | Organization Policy Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

## Tags Policy

```
module "tag_policy" {
  source             = "./modules/policy"
  policy_name        = "dev_tag_policy"
  policy_description = "dev Tag Policy"
  policy_type        = "TAG_POLICY"
  target_id          = data.aws_organizations_organization.root_org.roots[0].id
  policy_content = jsonencode(
    {
      "tags" = {
        "Name" = {
          "tag_key"      = { "@@assign" = "Name" },
          "enforced_for" = { "@@assign" = ["ec2:instance"] }
        },
        "Environment" = {
          "tag_key"      = { "@@assign" = "Environment" },
          "enforced_for" = { "@@assign" = ["ec2:instance"] }
        },
        "ApplicationOwner" = {
          "tag_key" = { "@@assign" = "ApplicationOwner" }
        },
        "BusinessUnit" = {
          "tag_key" = { "@@assign" = "BusinessUnit" }
        },
        "Application" = {
          "tag_key" = { "@@assign" = "Application" }
        },
        "CreatedBy" = {
          "tag_key" = { "@@assign" = "CreatedBy" }
        }
      }
    }
  )
  policy_tags = {
    Name = "dev_tag_policy"
  }
}
```

## Location Policy

```
module "location_policy" {
  source             = "./modules/policy"
  policy_name        = "dev_location_policy"
  policy_description = "dev Allowed Location Policy"
  policy_type        = "SERVICE_CONTROL_POLICY"
  target_id          = data.aws_organizations_organization.root_org.roots[0].id
  policy_tags = {
    Name = "dev_location_policy"
  }
  policy_content = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Sid" : "DenyAllOutsideCanada",
          "Effect" : "Deny",
          "NotAction" : [
            "a4b:*",
            "acm:*",
            "aws-marketplace-management:*",
            "aws-marketplace:*",
            "aws-portal:*",
            "budgets:*",
            "ce:*",
            "chime:*",
            "cloudfront:*",
            "config:*",
            "cur:*",
            "directconnect:*",
            "ec2:DescribeRegions",
            "ec2:DescribeTransitGateways",
            "ec2:DescribeVpnGateways",
            "fms:*",
            "globalaccelerator:*",
            "health:*",
            "iam:*",
            "importexport:*",
            "kms:*",
            "mobileanalytics:*",
            "networkmanager:*",
            "organizations:*",
            "pricing:*",
            "route53:*",
            "route53domains:*",
            "route53-recovery-cluster:*",
            "route53-recovery-control-config:*",
            "route53-recovery-readiness:*",
            "s3:GetAccountPublic*",
            "s3:ListAllMyBuckets",
            "s3:ListMultiRegionAccessPoints",
            "s3:PutAccountPublic*",
            "shield:*",
            "sts:*",
            "support:*",
            "trustedadvisor:*",
            "waf-regional:*",
            "waf:*",
            "wafv2:*",
            "wellarchitected:*"
          ],
          "Resource" : "*",
          "Condition" : {
            "StringNotEquals" : {
              "aws:RequestedRegion" : [
                "us-east-1",
                "us-west-2"
              ]
            }
          }
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
| output_policy_id | Organization Policy ID | String |
| output_policy_arn | Organization Policy ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.tag_policy.output_policy_id
```

```
module.location_policy.output_policy_arn
```