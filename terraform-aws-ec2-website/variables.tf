variable "key_name" {
  description = "The name of the EC2 key pair."
  type        = string
  default     = "my-key-pair"
}

# variable "public_key" {
#   description = "The public SSH key for the EC2 key pair."
#   type        = string
# }

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to connect to the instance via SSH."
  type        = list(string)
  default     = ["0.0.0.0/0"] # Allow access from anywhere (use carefully)
}

variable "region" {
  description = "The AWS region to deploy the instance in."
  type        = string
  default     = "us-east-2"
}

variable "ami_id" {
  description = "The AMI ID for the instance."
  type        = string
  default     = "ami-0c6d2bc35c65a2a45"
}

variable "instance_type" {
  description = "The type of instance to create."
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "MyEC2Instance"
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}