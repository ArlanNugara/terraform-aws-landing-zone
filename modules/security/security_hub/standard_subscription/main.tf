// Security Hub Standard Subscription

resource "aws_securityhub_standards_subscription" "sh_standard_subscription" {
  standards_arn = var.sh_standard_subscription_arn
}