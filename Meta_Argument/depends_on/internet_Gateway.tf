resource "aws_internet_gateway" "DEV-VPC-IGW" {
  vpc_id = aws_vpc.DEV-VPC.id
}