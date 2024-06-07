module "iam_roles" {
  source           = "../../modules/identity/iam/role"
  for_each         = local.roles
  role_name        = each.value.name
  role_description = each.value.description
  role_policy      = each.value.policy
  default_tags     = var.default_tags
}

module "iam_policy" {
  source             = "../../modules/identity/iam/policy"
  for_each           = local.policy
  policy_name        = each.value.name
  policy_description = each.value.description
  policy             = each.value.policy
  default_tags       = var.default_tags
}

module "instance_profile" {
  source                = "../../modules/identity/iam/instance_profile"
  for_each              = local.instance_profile
  instance_profile_name = each.value.name
  role_name             = each.value.role
  default_tags          = var.default_tags
}