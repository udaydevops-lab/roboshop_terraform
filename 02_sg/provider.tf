terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "prajai-terraform-state"
    key            = "sg"
    region         = "us-east-1"
    dynamodb_table = "prajai-tf-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
