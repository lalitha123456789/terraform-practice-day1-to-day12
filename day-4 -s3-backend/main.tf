resource "aws_s3_bucket" "lalli" {
    bucket = "remote-s3-backeend-dynamo"
  
}
#dynamodb creation

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  
name = "terraform-state-lock-dynamo"
hash_key = "lockID"
read_capacity = 20
write_capacity = 20


attribute {
  
  name = "lockID"
  type = "S"
}
}

