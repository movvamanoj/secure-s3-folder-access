variable "bucket_arn" {
  description = "The ARN of the S3 bucket."
  type        = string
}

variable "user_name" {
  description = "The name of the IAM user who will have access to the S3 bucket."
  type        = string
}
