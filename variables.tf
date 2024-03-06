variable "region" {
  description = "AWS region to deploy the resources in."
  type        = string
}

variable "user_name" {
  description = "The name of the IAM user."
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket to be created."
  type        = string
}

variable "environment" {
  description = "The environment where the S3 bucket will be deployed (e.g., production, development)."
  type        = string
}