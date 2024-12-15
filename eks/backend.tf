terraform {
  required_version = "~> 1.10.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "mernproj575"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "mernproj575"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
