// Config Delivery Channel Output

output "output_config_delivery_channel_id" {
  value       = aws_config_delivery_channel.delivery_channel.id
  description = "Config Delivery Channel ID"
}