terraform state mv module.aaa_s3.aws_iam_access_key.key 'module.s3["aaa"].aws_iam_access_key.key'
terraform state mv module.aaa_s3.aws_iam_policy.policy 'module.s3["aaa"].aws_iam_policy.policy'
terraform state mv module.aaa_s3.aws_iam_user.user 'module.s3["aaa"].aws_iam_user.user'
terraform state mv module.aaa_s3.aws_iam_user_policy_attachment.attachment 'module.s3["aaa"].aws_iam_user_policy_attachment.attachment'
terraform state mv module.aaa_s3.aws_s3_bucket.bucket 'module.s3["aaa"].aws_s3_bucket.bucket'
terraform state mv module.bbb_s3.aws_iam_access_key.key 'module.s3["bbb"].aws_iam_access_key.key'
terraform state mv module.bbb_s3.aws_iam_policy.policy 'module.s3["bbb"].aws_iam_policy.policy'
terraform state mv module.bbb_s3.aws_iam_user.user 'module.s3["bbb"].aws_iam_user.user'
terraform state mv module.bbb_s3.aws_iam_user_policy_attachment.attachment 'module.s3["bbb"].aws_iam_user_policy_attachment.attachment'
terraform state mv module.bbb_s3.aws_s3_bucket.bucket 'module.s3["bbb"].aws_s3_bucket.bucket'

