// Main

module "ou-l1" {
  source       = "../../modules/administration/organizational_unit"
  for_each     = local.ou-l1
  ou_name      = each.value.name
  ou_parent_id = each.value.parent
  ou_tags      = each.value.tags
}

module "ou-l2" {
  source       = "../../modules/administration/organizational_unit"
  for_each     = local.ou-l2
  ou_name      = each.value.name
  ou_parent_id = each.value.parent
  ou_tags      = each.value.tags
  depends_on = [
    module.ou-l1
  ]
}

module "ou-l3" {
  source       = "../../modules/administration/organizational_unit"
  for_each     = local.ou-l3
  ou_name      = each.value.name
  ou_parent_id = each.value.parent
  ou_tags      = each.value.tags
  depends_on = [
    module.ou-l2
  ]
}

module "acc-l3" {
  source       = "../../modules/administration/accounts"
  for_each     = local.account
  ac_name      = each.value.name
  ac_email     = each.value.email
  ac_parent_id = each.value.ou
  ac_tags      = each.value.tags
}