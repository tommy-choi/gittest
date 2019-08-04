provider "aws" {
  access_key = "xxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxx"
  region     = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-ada823d3"
  instance_type = "t2.micro"
}
