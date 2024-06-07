data "aws_organizations_organization" "root_org" {}

locals {
  # Roles
  roles = {
    "ec2_assume_role" = {
      name        = var.ec2_assume_role_name
      description = var.ec2_assume_role_description
      policy = jsonencode({
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
    }
    "s3_assume_role" = {
      name        = var.s3_assume_role_name
      description = var.s3_assume_role_description
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Sid    = ""
            Principal = {
              Service = "s3.amazonaws.com"
            }
          }
        ]
      })
    }
  }
  # Policy
  policy = {
    "ec2_ro" = {
      name        = var.ec2_ro_policy_name
      description = var.ec2_ro_policy_description
      policy = jsonencode({
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
      })
    }
    "ec2_rw" = {
      name        = var.ec2_rw_policy_name
      description = var.ec2_rw_policy_description
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action = [
              "ec2:*",
            ]
            Effect   = "Allow"
            Resource = "*"
          }
        ]
      })
    }
    "s3_ro" = {
      name        = var.s3_ro_policy_name
      description = var.s3_ro_policy_description
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action = [
              "s3:Describe*",
            ]
            Effect   = "Allow"
            Resource = "*"
          }
        ]
      })
    }
    "s3_rw" = {
      name        = var.s3_rw_policy_name
      description = var.s3_rw_policy_description
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action = [
              "s3:*",
            ]
            Effect   = "Allow"
            Resource = "*"
          }
        ]
      })
    }
  }
  attachment = {
    "ec2_ro" = {
      name   = var.ec2_ro_policy_name
      role   = [module.iam_roles["ec2_assume_role"].output_iam_role_name]
      policy = module.iam_policy["ec2_ro"].output_iam_policy_arn
    }
    "ec2_rw" = {
      name   = var.ec2_rw_policy_name
      role   = [module.iam_roles["ec2_assume_role"].output_iam_role_name]
      policy = module.iam_policy["ec2_rw"].output_iam_policy_arn
    }
    "s3_ro" = {
      name   = var.s3_ro_policy_name
      role   = [module.iam_roles["s3_assume_role"].output_iam_role_name]
      policy = module.iam_policy["s3_ro"].output_iam_policy_arn
    }
    "s3_rw" = {
      name   = var.s3_rw_policy_name
      role   = [module.iam_roles["s3_assume_role"].output_iam_role_name]
      policy = module.iam_policy["s3_rw"].output_iam_policy_arn
    }
  }
  instance_profile = {
    "profile_1" = {
      name = var.instance_profile_name
      role = module.iam_roles["ec2_assume_role"].output_iam_role_name
    }
  }
}