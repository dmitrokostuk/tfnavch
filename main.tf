provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "exemple1" {
  ami = "ami-05d72852800cbf29e"
  instance_type = "t2.micro"  
  tags = {
    Name = "example"
  }
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}