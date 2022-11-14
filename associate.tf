resource "aws_route_table_association" "kalai-crta-public-subnet-1" {
  subnet_id      = aws_subnet.my_subnets[0].id
  route_table_id = aws_route_table.kalai-public-crt.id
}
resource "aws_route_table_association" "kalai-crta-public-subnet-2" {
  subnet_id      = aws_subnet.my_subnets[1].id
  route_table_id = aws_route_table.kalai-public-crt.id
}
resource "aws_route_table_association" "kalai-crta-public-subnet-3" {
  subnet_id      = aws_subnet.my_subnets[2].id
  route_table_id = aws_route_table.kalai-public-crt.id
}
