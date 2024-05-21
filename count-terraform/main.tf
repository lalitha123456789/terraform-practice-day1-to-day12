provider "aws" {
  
}
resource "aws_instance" "dev" {
  ami  = var.ami_id
  instance_type = var.instance_type
  key_name  = var.keyname
  count = 2
  

  tags = {
    Name = "var"
  }
}