// CloudWatch Log Group

resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.log_group_name
  log_group_class   = var.log_group_class
  retention_in_days = var.log_group_log_retension_days
  tags = merge(
    {
      Name = var.log_group_name
    },
    var.default_tags
  )
}