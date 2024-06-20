// Values

default_tags = {
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "CreatedBy"        = "Terraform"
}

# Instances

sbx_app_1_name = "sbx_app_1"
sbx_app_1_ami  = "ami-0ceef54df6e1f48a1"
sbx_app_1_type = "t3.medium"
sbx_app_1_kp   = "sbx_kp"
sbx_web_1_name = "sbx_web_1"
sbx_web_1_ami  = "ami-0ceef54df6e1f48a1"
sbx_web_1_type = "t3.small"
sbx_web_1_kp   = "sbx_kp"
sbx_db_1_name  = "sbx_db_1"
sbx_db_1_ami   = "ami-0ceef54df6e1f48a1"
sbx_db_1_type  = "t3.large"
sbx_db_1_kp    = "sbx_kp"

# Storage

sbx_s3_name   = "sbx-general-bucket"
sbx_s3_prefix = "sbx-general"