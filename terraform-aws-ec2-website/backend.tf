terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket1122" # Replace with your actual S3 bucket name
    key            = "my-ec2-module/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "my-terraform-lock-table1122" # Replace with your actual DynamoDB table name
    encrypt        = true
  }
}