// Network ACL Rules Output

output "output_nacl_rule_id" {
  value       = aws_network_acl_rule.nacl_rules.id
  description = "NACL Rule ID"
}