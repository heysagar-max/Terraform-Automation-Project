terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  access_key = var.access_key_name
  secret_key = var.secret_key_name
  region     = var.region_name
}
