resource "aws_key_pair" "name" {
    key_name = "public"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}

resource "aws_instance" "lalli" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = aws_key_pair.name.key_name

    tags = {
      Name = "lalli"
    }
  
}