// Organizational Unit Output

output "output_ou_id" {
  value       = aws_organizations_organizational_unit.ou.id
  description = "Organizational Unit ID"
}

output "output_ou_arn" {
  value       = aws_organizations_organizational_unit.ou.arn
  description = "Organizational Unit ARN"
}

output "output_ou_name" {
  value       = aws_organizations_organizational_unit.ou.name
  description = "Organizational Unit Name"
}

output "output_ou_parent_id" {
  value       = aws_organizations_organizational_unit.ou.parent_id
  description = "Organizational Unit Parent OU ID"
}