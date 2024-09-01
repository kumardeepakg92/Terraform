#EC2 Instance Resource

resource "aws_instance" "My-EC2-VM" {
  ami               = "ami-047a51fa27710816e"
  instance_type     = "t2.micro"
  count = 5
  tags = {
    #"Name" = "Web"
    "Name" = "web-${count.index}"
  }
}