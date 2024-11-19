terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  backend "http" {}
  required_version = "~> 1.0"
}

provider "aws" {
  region = "eu-central-1"
}

module "s3" {
  source = "git::https://github.com/sika-training-examples/2024-11-19_partners_terraform_example.git//s3?ref=master"

  for_each = {
    aaa = null
    bbb = {}
  }

  bucket = "ondrej-${each.key}"
}

output "s3" {
  value = {
    for s3 in module.s3 :
    s3.name => s3
  }
  sensitive = true
}
