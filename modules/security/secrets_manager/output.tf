// Secrets Manager Output

output "output_secret_id" {
  value       = aws_secretsmanager_secret.secret.id
  description = "Secret ID"
}

output "output_secret_arn" {
  value       = aws_secretsmanager_secret.secret.arn
  description = "Secret ARN"
}

output "output_secret_name" {
  value       = aws_secretsmanager_secret.secret.name
  description = "Secret Name"
}