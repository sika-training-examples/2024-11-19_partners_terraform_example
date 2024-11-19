resource "aws_iam_user" "user" {
  name = "${var.bucket}-s3-bucket"
}

resource "aws_iam_policy" "policy" {
  name = "${var.bucket}-s3-bucket"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = [
        "s3:ListBucket",
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ]
      Effect = "Allow"
      Resource = [
        aws_s3_bucket.bucket.arn,
        "${aws_s3_bucket.bucket.arn}/*"
      ]
    }]
  })
}

resource "aws_iam_user_policy_attachment" "attachment" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_access_key" "key" {
  user = aws_iam_user.user.name
}
