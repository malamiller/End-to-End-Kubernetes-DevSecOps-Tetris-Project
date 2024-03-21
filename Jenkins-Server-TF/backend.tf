terraform {
  backend "s3" {
    bucket         = "terraform-awseks23"
    region         = "us-east-1"
    key            = "state/terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
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
