// VPC

resource "aws_vpc" "vpc" {
  cidr_block                           = var.vpc_address
  instance_tenancy                     = var.vpc_tenacy
  enable_dns_support                   = var.vpc_dns_support
  enable_dns_hostnames                 = var.vpc_dns_hostname
  enable_network_address_usage_metrics = var.vpc_usage_metrics
  tags = merge(
    {
      Name = var.vpc_name
    },
    var.default_tags
  )
}