// Security Hub

module "security_hub" {
  source = "../../modules/security/security_hub"
}

module "security_hub_admin_account" {
  source                        = "../../modules/security/security_hub/admin_account"
  security_hub_admin_account_id = var.sh_master_account_id
  depends_on = [
    module.security_hub
  ]
}

module "standard_subscription" {
  source                       = "../../modules/security/security_hub/standard_subscription"
  for_each                     = local.standards
  sh_standard_subscription_arn = each.value.arn
  depends_on = [
    module.security_hub_admin_account
  ]
}

module "secutity_hub_finding_aggregator" {
  source = "../../modules/security/security_hub/finding_aggregator"
  depends_on = [
    module.security_hub
  ]
}

// Config

module "bucket" {
  source        = "../../modules/storage/s3"
  for_each      = local.s3
  bucket_prefix = each.value.prefix
  bucket_tags = {
    "Name" = each.value.name
  }
}

module "bucket_object" {
  source      = "../../modules/storage/s3/object"
  for_each    = local.conformance_pack
  bucket_name = module.bucket["config"].output_bucket_name
  object_name = "conformance_pack/${each.key}"
  source_file = "../../config/management/conformance_packs/${each.key}.yaml"
}

module "config_iam_role" {
  source           = "../../modules/identity/iam/role"
  role_name        = local.role_policy.role_name
  role_description = local.role_policy.role_description
  role_policy      = local.role_policy.role_policy
  role_tags = {
    Name = local.role_policy.role_name
  }
}

module "config_iam_policy" {
  source           = "../../modules/identity/iam/role/policy"
  role_policy_name = local.role_policy.policy_name
  role_id          = module.config_iam_role.output_iam_role_id
  iam_role_policy  = local.role_policy.policy
}

resource "aws_iam_role_policy_attachment" "attach" {
  for_each   = local.role_policy.policy_attachment_arn
  role       = module.config_iam_role.output_iam_role_name
  policy_arn = each.value.arn
  depends_on = [
    module.config_iam_policy
  ]
}

module "recorder" {
  source               = "../../modules/security/config/recorder"
  config_recorder_name = local.config.recorder_name
  iam_role_arn         = module.config_iam_role.output_iam_role_arn
  depends_on = [
    aws_iam_role_policy_attachment.attach
  ]
}

module "delivery_channel" {
  source                       = "../../modules/security/config/delivery_channel"
  config_delivery_channel_name = local.config.delivery_channel_name
  bucket_name                  = module.bucket["config"].output_bucket_name
  depends_on = [
    module.recorder,
    aws_iam_role_policy_attachment.attach
  ]
}

module "recorder_status" {
  source               = "../../modules/security/config/recorder/status"
  config_recorder_name = module.recorder.output_config_recorder_name
  depends_on = [
    module.delivery_channel,
    aws_iam_role_policy_attachment.attach
  ]
}

module "org_aggregator" {
  source          = "../../modules/security/config/aggregator/organization"
  aggregator_name = local.config.org_aggregator_name
  role_arn        = module.config_iam_role.output_iam_role_arn
  aggregator_tags = {
    Name = local.config.org_aggregator_name
  }
  depends_on = [
    aws_iam_role_policy_attachment.attach
  ]
}

module "conformance_pack" {
  source                = "../../modules/security/config/conformance_pack"
  for_each              = local.conformance_pack
  conformance_pack_name = "ALV-${each.key}"
  s3_uri                = "s3://${module.bucket["config"].output_bucket_name}/conformance_pack/${each.key}"
  depends_on = [
    module.bucket_object,
    module.recorder_status
  ]
}

// Custom Policy

module "required_tag_policy" {
  source             = "../../modules/policy"
  for_each           = local.custom_policy
  policy_name        = each.value.name
  policy_description = each.value.description
  policy_type        = each.value.type
  target_id          = each.value.target
  policy_content     = each.value.policy
  policy_tags = {
    Name = each.value.name
  }
}

// Backup

module "backup" {
  source            = "../../modules/backup"
  bkp_vault_name    = var.backup_vault_name
  bkp_report_bucket = module.bucket["backup"].output_bucket_name
  bkp_vault_tags = {
    Name = var.backup_vault_name
  }
}