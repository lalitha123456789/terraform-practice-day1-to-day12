resource "aws_instance" "server" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t3.micro"
    key_name = "keypair1"
  
}