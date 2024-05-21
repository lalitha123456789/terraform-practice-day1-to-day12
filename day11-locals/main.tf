locals {
  bucket_name = "${var.layer}-${var.env}-bucket-lalli"

}

#bucket-name ="development-dev-bucket-lalli

resource "aws_s3_bucket" "name" {
  

    #bucket = web-dev-bucket"
    #bucket = "${var.layer}-${var.env}-bucket-lalli"
    bucket = local.bucket_name
    tags ={
        #Name = "${var.layer}-${var.env}-bucket-lalli"
        Name = local.bucket_name
        environment = var.env
    }
  
}
