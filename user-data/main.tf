resource "aws_instance" "name" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = "keypair1"
    user_data = file("test.sh")
    tags = {
      Name="userdata-tf"
    }
  
}