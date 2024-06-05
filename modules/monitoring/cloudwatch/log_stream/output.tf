// Cloudwatch Log Stream Output

output "output_log_stream_id" {
  value       = aws_cloudwatch_log_stream.log_stream.id
  description = "CloudWatch Log Stream ID"
}

output "output_log_stream_arn" {
  value       = aws_cloudwatch_log_stream.log_stream.arn
  description = "CloudWatch Log Stream ARN"
}

output "output_log_stream_name" {
  value       = aws_cloudwatch_log_stream.log_stream.name
  description = "CloudWatch Log Stream Name"
}