terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-c8a71f91-0a9e-4a9b-a0a4-cf75776efe80"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}