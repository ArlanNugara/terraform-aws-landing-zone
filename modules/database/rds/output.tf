// Output

output "output_rds_arn" {
  value       = aws_db_instance.rds.arn
  description = "RDS ARN"
}

output "output_rds_id" {
  value       = aws_db_instance.rds.id
  description = "RDS ID"
}

output "output_rds_resource_id" {
  value       = aws_db_instance.rds.resource_id
  description = "RDS Resource ID"
}

output "output_rds_address" {
  value       = aws_db_instance.rds.address
  description = "RDS Address"
}

output "output_rds_endpoint" {
  value       = aws_db_instance.rds.endpoint
  description = "RDS Endpoint"
}