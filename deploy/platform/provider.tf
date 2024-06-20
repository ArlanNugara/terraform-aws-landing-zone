terraform {
  required_version = "~> 1.8.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }

  backend "s3" {
    bucket = "alv-tfstate"
    key    = "state/platform.terraform.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {}