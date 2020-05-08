# aws configure
# aws ec2 delete-key-pair --key-name mykey
# cp ../terraform.tfvars ./
# cp ../mykey* ./
# terraform init

# terraform apply -auto-approve
# cat terraform.tfstate|grep public_ip
# ssh -i mykey ubuntu@13.209.73.61

# terraform destroy -auto-approve

resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = file("~/mykey.pub")
}

resource "aws_instance" "example" {
  ami           = "ami-03746875d916becc0"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name

  connection {
    user        = "ubuntu"
    private_key = file("mykey")
  }
  # tags = {
  #   #Name = format("MyInstance%s", var.V1)
  #   #Name = "MyInstance${var.V1}"
  #   Name = join("", ["MyInstance", var.V1])
  # }
}

provider "aws" {
  region     = "eu-west-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
