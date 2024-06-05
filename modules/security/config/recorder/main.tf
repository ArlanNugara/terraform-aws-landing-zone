// AWS Config Recorder

resource "aws_config_configuration_recorder" "config_recorder" {
  name     = var.config_recorder_name
  role_arn = var.iam_role_arn
}
