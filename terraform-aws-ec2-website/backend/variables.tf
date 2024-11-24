variable "region" {
  description = "The AWS region to deploy the backend resources."
  type        = string
  default     = "us-east-2"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform remote state."
  type        = string
  default     = "my-terraform-state-bucket1122"

}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking."
  type        = string
  default     = "my-terraform-lock-table1122"
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}