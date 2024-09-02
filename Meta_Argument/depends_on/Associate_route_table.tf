#Associate the Route Table with the Subnet
resource "aws_route_table_association" "DEV-VPC-Public-route-table-associate" {
  route_table_id = aws_route_table.VPC-DEV-Public-route-table.id
  subnet_id = aws_subnet.DEV-VPC-Public-Subnet-1.id
}