provider "aws" {
  region = "us-east-1"  
}

variable instance_type {
    default = "Development"
}

variable region_def {
    default = "us-east-1"
}

resource "aws_instance" "my_instance" {
    ami = "ami-068c0051b15cdb816"
    instance_type = var.instance_type == "" && var.region_def == "us-east-1" ? "t2.micro" : "t2.medium"
  
}
