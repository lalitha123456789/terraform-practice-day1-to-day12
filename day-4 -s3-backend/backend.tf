terraform {
  backend "s3" {
    bucket = "remote-s3-backeend-dynamo"
    key    = "terraform.tfstate"
    region = "ap-south-1"
   dynamodb_table = "terraform-state-lock-dynamo"
  encrypt = true
  }
}