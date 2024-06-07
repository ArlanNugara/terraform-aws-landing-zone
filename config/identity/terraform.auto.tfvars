// Values

default_tags = {
  "ApplicationOwner" = "Arlan Nugara",
  "BusinessUnit"     = "IT",
  "CreatedBy"        = "Terraform"
}

# Roles

ec2_assume_role_name        = "alv_ec2_role"
ec2_assume_role_description = "alv EC2 Role"
s3_assume_role_name        = "alv_s3_role"
s3_assume_role_description = "alv S3 Role"

# Policy
ec2_ro_policy_name        = "alv_ec2_ro_policy"
ec2_ro_policy_description = "alv EC2 Read Only Policy"
ec2_rw_policy_name        = "alv_ec2_rw_policy"
ec2_rw_policy_description = "alv EC2 Admin Policy"
s3_ro_policy_name        = "alv_s3_ro_policy"
s3_ro_policy_description = "alv S3 Read Only Policy"
s3_rw_policy_name        = "alv_s3_rw_policy"
s3_rw_policy_description = "alv S3 Admin Policy"

# Instance Profile
instance_profile_name = "alv_instance_profile_1"