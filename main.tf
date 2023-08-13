provider "aws" {
  region     = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "testingclass45"
    key    = "1236/terraform.tfstate"
    region = "us-east-1"
  }
}
# Create a VPC
resource "aws_vpc" "letstest" {
  cidr_block = "10.0.0.0/16"
    tags     = {
    Name     = "githubactions"
  }
}
