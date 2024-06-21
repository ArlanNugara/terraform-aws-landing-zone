// RDS

resource "aws_db_subnet_group" "rds_snet_group" {
  name       = "${var.db_name}-snet-group"
  subnet_ids = var.rds_snet_ids
  tags = merge(
    {
      Name = "${var.db_name}-snet-group"
    },
    var.default_tags
  )
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  min_lower        = 1
  min_upper        = 1
  min_numeric      = 1
  min_special      = 1
  keepers = {
    name = var.db_name
  }
}

module "rds_secret_manager" {
  source       = "../../security/secrets_manager"
  secret_name  = "${var.db_name}-password"
  secret_value = random_password.password.result
  default_tags = var.default_tags
}

resource "aws_db_instance" "rds" {
  db_name                    = var.db_name
  engine                     = var.rds_engine
  engine_version             = var.rds_engine_version
  instance_class             = var.rds_instance
  username                   = var.rds_username
  password                   = random_password.password.result
  parameter_group_name       = var.rds_param_group
  apply_immediately          = var.rds_apply
  auto_minor_version_upgrade = var.rds_minor_version_upgrade
  availability_zone          = var.rds_az
  backup_retention_period    = var.rds_backup_retension
  db_subnet_group_name       = aws_db_subnet_group.rds_snet_group.name
  publicly_accessible        = var.rds_public
  allocated_storage          = var.rds_storage_size
  max_allocated_storage      = var.rds_max_storage_size
  skip_final_snapshot        = true
  tags = merge(
    {
      Name = var.db_name
    },
    var.default_tags
  )
  depends_on = [
    module.rds_secret_manager
  ]
  lifecycle {
    ignore_changes = [
      parameter_group_name,
      backup_retention_period,
      max_allocated_storage,
      auto_minor_version_upgrade,
      apply_immediately,
      instance_class
    ]
  }
}