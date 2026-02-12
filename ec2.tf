provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA6ODU2YRDIT4NSKRE"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
