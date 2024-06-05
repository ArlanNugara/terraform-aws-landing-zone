// Network Access Control List Output

output "output_nacl_id" {
  value       = aws_network_acl.nacl.id
  description = "Network ACL ID"
}

output "output_nacl_arn" {
  value       = aws_network_acl.nacl.arn
  description = "Network ACL ARN"
}