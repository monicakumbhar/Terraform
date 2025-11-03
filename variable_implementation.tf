# Define the instance type variable

variable "instance_type"{
    description = "Define the description type"
    type = "string"
    default = "t2.micro"
}

variable "ami_id"{
    description = "AMI ID"
    type = "string"
    default = "abcd"
}

provider "aws" {
    region = "us_east-1"
  
}

#Create EC2 instance
resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_type
  
}

output "public_ip" {
    description = "EC2 instance public IP"
    value = aws_instance.example.public_ip
}