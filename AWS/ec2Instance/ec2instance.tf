provider "aws" {
  region     = "us-east-1"
  version = "~> 1.27"
}


resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
