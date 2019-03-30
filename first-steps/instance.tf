provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-79815217"
  instance_type = "t2.micro"
}
