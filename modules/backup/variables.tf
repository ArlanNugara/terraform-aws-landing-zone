// Backup Vault Variables

variable "bkp_vault_name" {
  type        = string
  description = "Backup Vault Name"
}

variable "listener_name" {
  type        = string
  description = "LB Listner Name"
}

variable "bkp_report_bucket" {
  type        = string
  description = "Bucket Name for Reports"
}

variable "default_tags" {
  type        = string
  description = "Default Tags"
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