# Create Elastic IP
resource "aws_eip" "MY-EIP" {
  instance = aws_instance.MY-EC2-VM.id
  vpc = true
  depends_on = [ aws_internet_gateway.DEV-VPC-IGW ]
}