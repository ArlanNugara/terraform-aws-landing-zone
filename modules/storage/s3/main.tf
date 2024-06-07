// Simple Storage Service

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = var.bucket_prefix
  force_destroy = var.bucket_force_destroy
  tags = merge(
    {
      Name = var.bucket_name
    },
    var.default_tags
  )
}