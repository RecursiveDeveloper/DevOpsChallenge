terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.19.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    default_tags {
        tags = {
            Environment = "Development"
            Owner       = "DevOps"
        }
    }
}
