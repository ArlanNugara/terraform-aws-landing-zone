// Secrets Manager

resource "aws_secretsmanager_secret" "secret" {
  name                    = var.secret_name
  recovery_window_in_days = var.secret_retention
  tags = merge(
    {
      Name = var.secret_name
    },
    var.default_tags
  )
}

resource "aws_secretsmanager_secret_version" "value" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.secret_value
}