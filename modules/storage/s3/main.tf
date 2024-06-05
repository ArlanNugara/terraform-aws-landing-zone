// Simple Storage Service

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = var.bucket_prefix
  force_destroy = var.bucket_force_destroy
  tags          = var.bucket_tags
}