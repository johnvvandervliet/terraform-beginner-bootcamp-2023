terraform {
  required_providers {
    random = {
        source = "hashicorp/random"
        version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.22.0"
    }
  }
}

provider "random" {
    # Configuration options
  
}


provider "aws" {
  # Configuration options
}

# https://registry.terraform.io/providers/hashicorp/random/latest
resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length           = 16
  special          = false
  override_special = ""
}

 # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "example" {
  #Bucket Name rules
  #https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html

  bucket = random_string.bucket_name.result

  tags = {
    Name        = "My super duper bucket"
    Environment = "Dev boot camp"
  }
} 

output "random_bucket_name" {
    value = random_string.bucket_name.result
  
}