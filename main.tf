terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "app_storage" {
  bucket_prefix = "demo-app-storage-"

  tags = {
    Name        = "AppStorage"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
