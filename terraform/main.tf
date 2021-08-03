terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "Jenkins_server" {
  ami                    = "ami-0d382e80be7ffdae5"
  instance_type          = "t2.micro"
  iam_instance_profile   = "EC2-SSM"
  key_name               = "mackey"
  vpc_security_group_ids = ["sg-067427c23144a118d"]
  subnet_id              = "subnet-050b644e891256ec8"

  tags = {
    "Name" = "Jenkins-Server"
  }
}

resource "aws_instance" "Web_server" {
  ami                    = "ami-0d382e80be7ffdae5"
  instance_type          = "t2.micro"
  iam_instance_profile   = "EC2-SSM"
  key_name               = "mackey"
  vpc_security_group_ids = ["sg-00b27d54e41cf90cc"]
  subnet_id              = "subnet-050b644e891256ec8"

  tags = {
    "Name" = "Web-Server"
  }
}