provider "aws" {
  region     = "us-east-1"
  default_tags {
    tags = {
      group        = "accounting"
      portfolio    = "DEVOPS"
      businessunit = "school"
      source       = "nduka145/demo-github-actions"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "testingclass45"
    key    = "1236/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0905273034904bd70"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
