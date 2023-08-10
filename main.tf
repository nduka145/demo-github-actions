provider "aws" {
  region     = "us-east-1"
  access_key = "$secrets.access_key"
  secret_key = "$secrets.secret_key"
}

# Create a VPC
resource "aws_vpc" "letstest" {
  cidr_block = "10.0.0.0/16"
    tags     = {
    Name     = "githubactions"
  }
}
