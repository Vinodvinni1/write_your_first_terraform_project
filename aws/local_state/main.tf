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
  region  = var.aws_region
}
# EC2 Instance 
resource "aws_instance" "app_server" {
  ami           = var.ami_id 
  instance_type = var.instance_type

  tags = {
    Name = var.ec2_name_tag
  }
}
  
