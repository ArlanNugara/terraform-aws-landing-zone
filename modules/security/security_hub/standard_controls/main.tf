// Security Hub Standard Controls

resource "aws_securityhub_standards_control" "sh_standard_control" {
  standards_control_arn = var.sh_standard_control_arn
  control_status        = var.sh_standard_control_status
  disabled_reason       = var.sh_standard_control_disable_reason
}