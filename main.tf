variable "ami_id"{
    description = "AMI ID value"
    type = string
    default = "ami-0157af9aea2eef346"
}

variable "instance_type" {
    description = "Instance Type"
    type = string
    default = "t3.micro"
  
}

provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = var.ami_id  # Specify an appropriate AMI ID
    instance_type = var.instance_type
}

output "public_ip" {
    description = "AWS EC2 instance public IP"
    value = aws_instance.example.public_ip
  
}