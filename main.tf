terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = {
      Env     = "dev"
      Project = "learning"
    }
  }
}