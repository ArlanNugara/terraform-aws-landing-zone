// Backup Vault Variables

variable "bkp_vault_name" {
  type        = string
  description = "Backup Vault Name"
}

variable "bkp_vault_tags" {
  type        = map(string)
  description = "Backup Vault Tags"
}

variable "bkp_report_bucket" {
  type        = string
  description = "Bucket Name for Reports"
}

locals {
  bkp_template = {
    "backup" = {
      template = "BACKUP_JOB_REPORT"
    }
    "restore" = {
      template = "RESTORE_JOB_REPORT"
    }
  }
}