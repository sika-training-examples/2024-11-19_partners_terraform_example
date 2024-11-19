output "name" {
  value = aws_s3_bucket.bucket.bucket
}

output "access_key" {
  value = aws_iam_access_key.key.id
}

output "secret_key" {
  value     = aws_iam_access_key.key.secret
  sensitive = true
}
