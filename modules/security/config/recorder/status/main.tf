// Config Recorder Status

resource "aws_config_configuration_recorder_status" "recorder_status" {
  name       = var.config_recorder_name
  is_enabled = true
}