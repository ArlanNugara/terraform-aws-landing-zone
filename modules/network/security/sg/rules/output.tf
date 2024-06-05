// Security Group Rules Output

output "output_sg_rule_id" {
  value       = aws_security_group_rule.sg_rules.id
  description = "Security Group Rule ID"
}