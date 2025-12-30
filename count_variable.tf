provider "aws" {
  region = "us-east-1"  
}

variable "user_map" {
    type = map
    default = {
        Name = "monu"
        Age = "22"
    }
}

resource "aws_instance" "my_instance" {
  ami = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"
  count = 2

  tags = {
    Name = var.user_map["Name"]
  }
}

resource "aws_iam_user" "ib" {
  name = "developer-${count.index}"
  count = 2
  }


variable "users" {
    type = list
    default = ["monica","chaitu","vivan"]
  }

resource "aws_iam_user" "ib1" {
  name = var.users[count.index]
  count = 2
  
}



