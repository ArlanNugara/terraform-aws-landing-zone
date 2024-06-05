module "iam_roles" {
  source           = "../../modules/identity/iam/role"
  for_each         = local.roles
  role_name        = each.value.name
  role_description = each.value.description
  role_policy      = each.value.policy
  role_tags        = each.value.tags
}

module "iam_policy" {
  source             = "../../modules/identity/iam/policy"
  for_each           = local.policy
  policy_name        = each.value.name
  policy_description = each.value.description
  policy             = each.value.policy
  policy_tags        = each.value.tags
}

# module "iam_role_policy_attachment" {
#   source             = "./modules/identity/iam/policy/attachment"
#   for_each           = local.attachment
#   policy_attach_name = each.value.name
#   policy_arn         = each.value.policy
#   role_name          = each.value.role
# }

module "instance_profile" {
  source                = "../../modules/identity/iam/instance_profile"
  instance_profile_name = "alv_instance_profile"
  role_name             = module.iam_roles["ec2_assume_role"].output_iam_role_name
  instance_profile_tags = {
    Name = "alv_instance_profile"
  }
}