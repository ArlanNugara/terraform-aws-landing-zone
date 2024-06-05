// S3 Object Output

output "output_s3_object_id" {
  value       = aws_s3_object.object.id
  description = "S3 Object ID"
}

output "output_s3_object_name" {
  value       = aws_s3_object.object.key
  description = "S3 Object Name"
}