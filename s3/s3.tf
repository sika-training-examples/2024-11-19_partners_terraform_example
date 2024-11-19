resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "${var.bucket}2"
}
