#Terraform Block

terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = "sa-east-1"
}

