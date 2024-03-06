module "s3_bucket" {
  source          = "./s3_bucket"
  bucket_name     = var.bucket_name
  environment     = var.environment
}

module "iam_user" {
  source          = "./iam_user"
  bucket_arn      = module.s3_bucket.bucket_arn
  user_name       = var.user_name
}
