provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-01c647eace872fc02" # us-east-1
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}

backend "s3" {
    bucket         = "assesmentbucket"
    key            = "hello/terraform.tfstate"
    region         = "us-east-1"
}