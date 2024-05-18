resource "aws_s3_bucket" "name" {
    bucket = "sowlalli"
  
}

#create ec2 instance

resource "aws_instance" "lalli" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = "keypair1"

    tags = {
      Name = "lalli"
    }
  
}