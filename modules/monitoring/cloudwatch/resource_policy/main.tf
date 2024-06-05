// CloudWatch Log Resource Policy

resource "aws_cloudwatch_log_resource_policy" "log_resource_policy" {
  policy_name     = var.log_resource_policy_name
  policy_document = var.log_resource_policy_document
}