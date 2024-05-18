resource "aws_s3_bucket" "name" {
    bucket = "sowlalli1"
  
}

#versioning enabled
resource "aws_s3_bucket_versioning" "name" {
bucket = aws_s3_bucket.name.id
versioning_configuration {
  status = "Enabled"
}



}

#dynamodb locking

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

