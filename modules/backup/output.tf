// Backup Vault Output

output "output_bkp_vault_id" {
  value       = aws_backup_vault.bkp_vault.id
  description = "Backup Vault ID"
}

output "output_bkp_vault_arn" {
  value       = aws_backup_vault.bkp_vault.arn
  description = "Backup Vault ARN"
}

output "output_bkp_vault_name" {
  value       = aws_backup_vault.bkp_vault.name
  description = "Backup Vault Name"
}