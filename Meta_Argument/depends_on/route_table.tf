resource "aws_route_table" "VPC-DEV-Public-route-table" {
  vpc_id = aws_vpc.DEV-VPC.id
}