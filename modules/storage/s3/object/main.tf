// S3 Object

resource "aws_s3_object" "object" {
  bucket = var.bucket_name
  key    = var.object_name
  source = var.source_file
}