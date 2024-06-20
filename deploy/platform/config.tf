// Locals

data "aws_iam_instance_profile" "profile" {
  name = "alv_instance_profile_1"
}

data "aws_subnet" "sbx_app_subnet" {
  filter {
    name   = "tag:Name"
    values = ["alv_sbx_snet_app"]
  }
}

data "aws_subnet" "sbx_db_subnet" {
  filter {
    name   = "tag:Name"
    values = ["alv_sbx_snet_db"]
  }
}

data "aws_subnet" "sbx_web_subnet" {
  filter {
    name   = "tag:Name"
    values = ["alv_sbx_snet_web"]
  }
}

data "aws_security_group" "sbx_sg" {
  filter {
    name   = "tag:Name"
    values = ["alv_sbx_sg"]
  }
}

locals {
  instances = {
    "sbx_app_1" = {
      name     = var.sbx_app_1_name
      ami      = var.sbx_app_1_ami
      type     = var.sbx_app_1_type
      iam      = data.aws_iam_instance_profile.profile.name
      key_pair = var.sbx_app_1_kp
      snet     = data.aws_subnet.sbx_app_subnet.id
      sg       = [data.aws_security_group.sbx_sg.id]
    }
    "sbx_web_1" = {
      name     = var.sbx_web_1_name
      ami      = var.sbx_web_1_ami
      type     = var.sbx_web_1_type
      iam      = data.aws_iam_instance_profile.profile.name
      key_pair = var.sbx_web_1_kp
      snet     = data.aws_subnet.sbx_web_subnet.id
      sg       = [data.aws_security_group.sbx_sg.id]
    }
    "sbx_db_1" = {
      name     = var.sbx_db_1_name
      ami      = var.sbx_db_1_ami
      type     = var.sbx_db_1_type
      iam      = data.aws_iam_instance_profile.profile.name
      key_pair = var.sbx_db_1_kp
      snet     = data.aws_subnet.sbx_db_subnet.id
      sg       = [data.aws_security_group.sbx_sg.id]
    }
  }
  storage = {
    "sbx" = {
      name   = var.sbx_s3_name
      prefix = var.sbx_s3_prefix
    }
  }
}