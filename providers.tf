terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 2.2"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}