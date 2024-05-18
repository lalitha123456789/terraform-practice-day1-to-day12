resource "aws_s3_bucket" "lalli" {
    bucket = "remote-s3-backeend-dynamo"
  
}
#dynamodb creation

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  
name = "terraform-state-lock-dynamo"
hash_key = "LockID"
read_capacity = 20
write_capacity = 20


attribute {
  
  name = "LockID"
  type = "S"
}
}

resource "aws_instance" "lalli1" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = "keypair1"

    tags = {
      Name = "lalli1"
    }
  
}