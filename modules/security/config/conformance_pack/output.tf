// Config Conformance Pack Output

output "output_conformance_pack_arn" {
  value       = aws_config_conformance_pack.conformance_pack.arn
  description = "Config Conformance Pack ARN"
}

output "output_conformance_pack_id" {
  value       = aws_config_conformance_pack.conformance_pack.id
  description = "Config Conformance Pack ID"
}

output "output_conformance_pack_name" {
  value       = aws_config_conformance_pack.conformance_pack.name
  description = "Config Conformance Pack Name"
}