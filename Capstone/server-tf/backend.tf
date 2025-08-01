terraform {
  backend "s3" {
    bucket         = "capst-buck-1"
    region         = "us-east-1"
    key            = "Capstone/server-tf/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}