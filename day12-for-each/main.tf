variable "ami" {
    type = string
    default = "ami-013e83f579886baeb"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

 variable "lalitha" {
    type = list(string)
    default = [ "lalli","ammu" ]
   
 }
  
resource "aws_instance" "name" {
    ami =var.ami
    instance_type =var.instance_type
    for_each = toset(var.lalitha)

    #count = length(var.lalitha)
    tags ={
        Name = each.value #for a set , each.value and each.key is the same
    }
  
}
 
# tags ={
  #  Name = var.lalitha[count.index] #example for count{
 


