provider "aws" {
  access_key = "AKIARJHMJWNOFOJHKJGA"
  secret_key = "Ec7c+WcU+7J28A6gYIfBtxt4auc3yM904HflLKoc"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0dad359ff462124ca"
  instance_type = "t2.micro"
}
