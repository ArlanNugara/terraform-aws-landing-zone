// Config Delivery Channel

resource "aws_config_delivery_channel" "delivery_channel" {
  name           = var.config_delivery_channel_name
  s3_bucket_name = var.bucket_name
}
