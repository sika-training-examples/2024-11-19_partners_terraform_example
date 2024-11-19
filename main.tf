terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  backend "http" {}
}

provider "aws" {
  region = "eu-central-1"
}

resource "random_pet" "name" {}
resource "random_password" "name" {
  length = 1
}

module "s3" {
  source = "./s3"
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
