terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.0"
    }
  }
}
provider "aws" {
  region = "eu-north-1"  # Change this to your desired region
}
resource "aws_instance" "app_server" {
  count = 1

  ami           = "ami-0fe8bec493a81c7da"  # Replace with your desired AMI ID
  instance_type = "t3.micro"  # Replace with your desired instance type

  tags = {
    Name = "MyInstance-${count.index}"
  }
}
