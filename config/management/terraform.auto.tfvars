// Values

default_tags = {
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "CreatedBy"        = "Terraform"
}

sh_master_account_id                       = "ACCOUNT ID HERE"
security_hub_nist_arn                      = "arn:aws:securityhub:ca-central-1::standards/nist-800-53/v/5.0.0"
security_hub_pcidss_arn                    = "arn:aws:securityhub:ca-central-1::standards/pci-dss/v/3.2.1"
security_hub_awsfb_arn                     = "arn:aws:securityhub:ca-central-1::standards/cis-aws-foundations-benchmark/v/1.4.0"
config_bucket_name                         = "alv-config-"
backup_bucket_name                         = "alv-backup-"
config_iam_role_name                       = "alv_config_role"
config_iam_role_description                = "alv Config Role"
config_iam_policy_name                     = "alv_config_role_policy"
config_policy_attachment_arn               = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
config_org_policy_attachment_arn           = "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations"
config_recorder_name                       = "alv_config_recorder"
config_delivery_channel_name               = "alv_config_delivery_channel"
config_org_aggregator_name                 = "alv_config_org_aggregator"
custom_req_tag_policy_name                 = "alv_req_tag_policy"
custom_req_tag_policy_description          = "alv Tag Policy"
custom_allowed_location_policy_name        = "alv_allowed_location_policy"
custom_allowed_location_policy_description = "alv Allowed Location Policy"
backup_vault_name                          = "alv_backup"