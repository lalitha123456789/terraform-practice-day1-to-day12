provider "aws" {
  
}

data "aws_subnet" "name" {
  filter {
    name = "tag:Name"
    values = ["subnet-vpc"]
    
    
  }
  
}

resource "aws_instance" "name" {
  ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.name.id
  key_name = "keypair1"
  tags = {
    Name = "lalli"
  }
}