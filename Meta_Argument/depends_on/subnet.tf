resource "aws_subnet" "DEV-VPC-Public-Subnet-1" {
  vpc_id = aws_vpc.DEV-VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}