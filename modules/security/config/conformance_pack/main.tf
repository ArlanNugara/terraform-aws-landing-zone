// Config Conformance Pack

resource "aws_config_conformance_pack" "conformance_pack" {
  name            = var.conformance_pack_name
  template_s3_uri = var.s3_uri
}