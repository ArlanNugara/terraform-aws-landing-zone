data "aws_organizations_organization" "root_org" {}

data "aws_organizations_organizational_unit" "ou-l1" {
  parent_id = data.aws_organizations_organization.root_org.roots[0].id
  name      = "ALV"
}

// Security Hub

locals {
  standards = {
    "NIST" = {
      arn = var.security_hub_nist_arn
    }
    "PCI-DSS" = {
      arn = var.security_hub_pcidss_arn
    }
    "AWS-FB" = {
      arn = var.security_hub_awsfb_arn
    }
  }
}

// Config

locals {
  s3 = {
    "config" = {
      prefix = var.config_bucket_name
      name   = "${var.config_bucket_name}-bucket"
    }
    "backup" = {
      prefix = var.backup_bucket_name
      name   = "${var.backup_bucket_name}-bucket"
    }
  }
  role_policy = {
    role_name        = var.config_iam_role_name
    role_description = var.config_iam_role_description
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
    policy_name = var.config_iam_policy_name
    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action = [
            "s3:*",
          ]
          Effect = "Allow"
          Resource = [
            module.bucket["config"].output_bucket_arn,
            "${module.bucket["config"].output_bucket_arn}/*"
          ]
        }
      ]
    })
    policy_attachment_arn = {
      "config_role" = {
        arn = var.config_policy_attachment_arn
      }
      "org_config_role" = {
        arn = var.config_org_policy_attachment_arn
      }
    }
  }
  config = {
    recorder_name         = var.config_recorder_name
    delivery_channel_name = var.config_delivery_channel_name
    org_aggregator_name   = var.config_org_aggregator_name
  }
  conformance_pack = {
    "AWS-Control-Tower-Detective-Guardrails"                                 = {}
    "Operational-Best-Practices-for-Amazon-S3"                               = {}
    "Operational-Best-Practices-for-Asset-Management"                        = {}
    "Operational-Best-Practices-for-AWS-Well-Architected-Reliability-Pillar" = {}
    "Operational-Best-Practices-for-AWS-Well-Architected-Security-Pillar"    = {}
    "Operational-Best-Practices-for-Data-Resiliency"                         = {}
    "Operational-Best-Practices-for-EC2"                                     = {}
    "Security-Best-Practices-for-Secrets-Manager"                            = {}
  }
}

// Custom Policy

locals {
  custom_policy = {
    "req_tag" = {
      name        = var.custom_req_tag_policy_name
      description = var.custom_req_tag_policy_description
      type        = "TAG_POLICY"
      target      = data.aws_organizations_organizational_unit.ou-l1.id
      policy = jsonencode({
        "tags" = {
          "Name" = {
            "tag_key" = { "@@assign" = "Name" }
          },
          "Environment" = {
            "tag_key" = { "@@assign" = "Environment" }
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
      })
    }
    "allowed_loc" = {
      name        = var.custom_allowed_location_policy_name
      description = var.custom_allowed_location_policy_description
      type        = "SERVICE_CONTROL_POLICY"
      target      = data.aws_organizations_organizational_unit.ou-l1.id
      policy = jsonencode({
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
                  "ca-central-1"
                ]
              }
            }
          }
        ]
      })
    }
  }
}