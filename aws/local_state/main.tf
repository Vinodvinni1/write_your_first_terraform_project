terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-091124c3965bce679"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-s3-bucket-updated-s3"

  tags = {
    Name        = "my-s3-bucket"
  }
}
