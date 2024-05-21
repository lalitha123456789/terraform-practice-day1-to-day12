module "name" {
    source = "../custom-network-day2"
    ami_id = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    keyname = "keypair1"
    
  
}