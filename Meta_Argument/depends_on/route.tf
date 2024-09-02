resource "aws_route" "DEV-VPC-Public-route" {
  route_table_id = aws_route_table.VPC-DEV-Public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.DEV-VPC-IGW.id
}
