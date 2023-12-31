terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-web" {
  source  = "app.terraform.io/estephe-org/s3-web/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}