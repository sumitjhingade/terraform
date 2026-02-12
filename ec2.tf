provider "aws" {
  region     = "ap-south-1"
}

data "aws_ami" "ami_id" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "^myami-[0-9]{3}"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}
resource "aws_instance" "myec2" {
    ami = aws_ami.image_id
    instance_type = "t2.micro"
}
