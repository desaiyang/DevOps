provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ec2_instance_dev" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name = var.dev_instance
  }
}


resource "aws_instance" "ec2_instance_qa" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name = var.qa_instance
  }
}


resource "aws_instance" "ec2_instance_uat" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name = var.uat_instance
  }
}


resource "aws_instance" "ec2_instance_prod" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = {
    Name = var.prod_instance
  }
}
