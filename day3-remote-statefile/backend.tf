terraform {
  backend "s3" {
    bucket = "sowlal"
    key    = "terraform.tfstate"
    region = "ap-south-1"

  }
}