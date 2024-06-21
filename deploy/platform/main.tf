// Platform

module "sbx_instances" {
  source        = "../../modules/compute/ec2/instance"
  for_each      = local.instances
  instance_name = each.value.name
  instance_ami  = each.value.ami
  instance_type = each.value.type
  instance_iam  = each.value.iam
  key_pair_name = each.value.key_pair
  snet_id       = each.value.snet
  sg_ids        = each.value.sg
  default_tags  = var.default_tags
}

module "sbx_rds" {
  source               = "../../modules/database/rds"
  for_each             = local.database
  db_name              = each.value.name
  rds_username         = each.value.username
  rds_snet_ids         = each.value.snet
  rds_storage_size     = each.value.storage
  rds_max_storage_size = each.value.max_storage
  rds_az               = each.value.az
  default_tags         = var.default_tags
}

module "sbx_bucket" {
  source        = "../../modules/storage/s3"
  for_each      = local.storage
  bucket_name   = each.value.name
  bucket_prefix = each.value.prefix
  default_tags  = var.default_tags
}