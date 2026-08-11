# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# EC2 Variables
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_name_tag" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Terraform_Demo"
}

# S3 Variables
variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "s3_name_tag" {
  description = "Name tag for the S3 bucket"
  type        = string
  default     = "my-s3-bucket"
}

