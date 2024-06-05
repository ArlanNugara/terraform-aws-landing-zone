// Backup Vault

resource "aws_backup_vault" "bkp_vault" {
  name = var.bkp_vault_name
  tags = var.bkp_vault_tags
}

resource "aws_backup_global_settings" "bkp_vault_global_settings" {
  global_settings = {
    "isCrossAccountBackupEnabled" = "true"
  }
}

resource "aws_backup_report_plan" "bkp_report_plan" {
  for_each = local.bkp_template
  name     = "${var.bkp_vault_name}_${each.key}_report_plan"
  report_delivery_channel {
    formats = [
      "CSV",
      "JSON"
    ]
    s3_bucket_name = var.bkp_report_bucket
  }
  report_setting {
    report_template = each.value.template
  }
}