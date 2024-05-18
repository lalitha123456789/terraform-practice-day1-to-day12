
#create ec2

resource "aws_instance" "lalli" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = "keypair1"

    tags = {
      Name = "lalli"
    }
  
}