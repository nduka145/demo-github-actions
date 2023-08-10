provider "aws" {
  region     = "us-east-1"
  access_key = "{{ secrets.AWS_SECRET_ACCESS_KEY }}"
  secret_key = "{{ secrets.AWS_ACCESS_KEY_ID }}"
}

# Create a VPC
resource "aws_vpc" "letstest" {
  cidr_block = "10.0.0.0/16"
    tags     = {
    Name     = "githubactions"
  }
}
