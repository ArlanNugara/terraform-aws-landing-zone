// Application Load Balancer

resource "aws_lb" "lb_app" {
  name                                        = var.lb_app_name
  load_balancer_type                          = "application"
  security_groups                             = var.lb_app_sg_ids
  subnets                                     = var.lb_app_snet_ids
  drop_invalid_header_fields                  = var.lb_app_invalid_header
  enable_tls_version_and_cipher_suite_headers = var.lb_app_cipher_suite
  enable_http2                                = var.lb_app_http2
  enable_xff_client_port                      = var.lb_app_xff_client_port
  idle_timeout                                = var.lb_app_idle_timeout
  preserve_host_header                        = var.lb_app_host_header_preservation
  xff_header_processing_mode                  = var.lb_app_xff_header_mode
  tags = merge(
    {
      Name = var.lb_app_name
    },
    var.default_tags
  )
}