// Security Hub

resource "aws_securityhub_account" "security_hub" {
  enable_default_standards  = var.security_hub_standards
  control_finding_generator = var.security_hub_findings
  auto_enable_controls      = var.security_hub_controls
}