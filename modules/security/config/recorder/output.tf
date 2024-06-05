// AWS Config Recorder Output

output "output_config_recorder_id" {
  value       = aws_config_configuration_recorder.config_recorder.id
  description = "Config Recorder ID"
}

output "output_config_recorder_arn" {
  value       = aws_config_configuration_recorder.config_recorder.role_arn
  description = "Config Recorder ARN"
}

output "output_config_recorder_name" {
  value       = aws_config_configuration_recorder.config_recorder.name
  description = "Config Recorder Name"
}