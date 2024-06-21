// Variables

variable "db_name" {
  type        = string
  description = "RDS Database Name"
}

variable "rds_engine" {
  type        = string
  description = "RDS Database Engine"
  default     = "mysql"
}

variable "rds_engine_version" {
  type        = string
  description = "RDS Database Engine Version"
  default     = "8.0"
}

variable "rds_instance" {
  type        = string
  description = "RDS Instance Size"
  default     = "db.t3.micro"
}

variable "rds_username" {
  type        = string
  description = "RDS Username"
}

variable "rds_param_group" {
  type        = string
  description = "RDS Parameter Group"
  default     = "default.mysql8.0"
}

variable "rds_apply" {
  type        = bool
  description = "RDS Apply Immediate Option"
  default     = true
}

variable "rds_minor_version_upgrade" {
  type        = bool
  description = "RDS Minor Version Upgrade"
  default     = false
}

variable "rds_az" {
  type        = string
  description = "RDS Availability Zone"
}

variable "rds_backup_retension" {
  type        = number
  description = "RDS Backup Retention Period"
  default     = 7
}

variable "rds_public" {
  type        = bool
  description = "RDS Public Availability"
  default     = false
}

variable "rds_storage_size" {
  type        = number
  description = "RDS Database Storage Size"
}

variable "rds_max_storage_size" {
  type        = number
  description = "RDS Database Maximum Storage Size"
}

variable "rds_snet_ids" {
  type        = list(string)
  description = "RDS Subnet IDS"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}