// Secrets Manager

resource "aws_secretsmanager_secret" "secret" {
  name                    = var.secret_name
  tags                    = var.secret_tags
  recovery_window_in_days = var.secret_retention
}

resource "aws_secretsmanager_secret_version" "value" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.secret_value
}