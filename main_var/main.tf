provider "aws" {
   region     = "ap-south-1"
}

resource "aws_instance" "ec2_example" {
   
   ami           = "ami-0f2e14a2494a72db9"
   instance_type = "t2.micro"
   
   tags = {
           Name = "Terraform EC2"
   }
}
