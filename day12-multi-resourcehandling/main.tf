resource "aws_instance" "name" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "keypair1"
  
  tags ={
    Name ="newkey"

  }
}
 resource "aws_s3_bucket" "name" {
    bucket = "lallitha"
   
 }
 

 #terraform apply -target=aws_s3_bucket.name #apply or destroy particular resource