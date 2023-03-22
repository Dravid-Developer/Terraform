provider "aws" {
   region     = "ap-south-1"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0f2e14a2494a72db9"
   instance_type =  var.instance_type

   tags = {
           Name = "Terraform EC2"
   }
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}


