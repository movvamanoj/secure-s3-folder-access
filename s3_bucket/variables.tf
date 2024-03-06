variable "bucket_name" {
  description = "The name of the S3 bucket to be created."
  type        = string
}

variable "environment" {
  description = "The environment where the S3 bucket will be deployed"
  type        = string
}
