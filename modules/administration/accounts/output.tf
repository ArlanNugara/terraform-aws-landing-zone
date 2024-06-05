// Accounts Output

output "output_ac_id" {
  value       = aws_organizations_account.account.id
  description = "Account ID"
}

output "output_ac_arn" {
  value       = aws_organizations_account.account.arn
  description = "Account ARN"
}

output "output_ac_parent_id" {
  value       = aws_organizations_account.account.parent_id
  description = "Account Parent ID"
}

output "output_ac_name" {
  value       = aws_organizations_account.account.name
  description = "Account Name"
}

output "output_ac_email" {
  value       = aws_organizations_account.account.email
  description = "Account Email"
}