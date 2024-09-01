# Create EC2 Instance
resource "aws_instance" "My-VM" {
  ami           = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "Web"
  }
  lifecycle {
    ignore_changes = [ tags ]
  }
}