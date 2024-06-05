// Simple Storage Service Output

output "output_bucket_id" {
  value       = aws_s3_bucket.bucket.id
  description = "S3 bucket ID"
}

output "output_bucket_arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "S3 bucket ARN"
}

output "output_bucket_name" {
  value       = aws_s3_bucket.bucket.bucket
  description = "S3 bucket name"
}