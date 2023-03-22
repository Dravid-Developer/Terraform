provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0f2e14a2494a72db9"
  instance_type = "t2.micro"
  
  tags = {
    Name = "example-instance"
  }
}