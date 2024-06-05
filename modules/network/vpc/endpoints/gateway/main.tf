// VPC Endpoint Gateway Type

resource "aws_vpc_endpoint" "vpc_endpoint_gateway" {
  vpc_id            = var.vpc_id
  service_name      = var.vpc_endpoint_service
  vpc_endpoint_type = "Gateway"
  route_table_ids   = var.rt_id
  tags              = var.vpc_endpoint_gateway_tags
}