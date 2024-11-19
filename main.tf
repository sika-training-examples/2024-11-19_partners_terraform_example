terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIAS66YWWD3HXNHRSGD"
  secret_key = "zzx5FcPj4uoORGDvT4FDekoXcHKyazp"
}

resource "aws_s3_bucket" "example" {
  bucket = "ondrej-partners-training"
}
