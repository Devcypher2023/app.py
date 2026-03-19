terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
  }
}