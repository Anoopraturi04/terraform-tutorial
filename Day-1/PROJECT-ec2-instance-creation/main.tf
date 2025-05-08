provider "aws" {
  region = "ap-northeast-3" # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-00dc6d07c0a114859" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  subnet_id = "subnet-038292ad9cabf01e9"
  #key_name = "ansible.pem"
  tags = {
    Name = "Server1"
  }
}