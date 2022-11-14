resource "aws_route_table" "kalai-public-crt" {
  vpc_id = aws_vpc.kalai-test.id

  route {
    //associated subnet can reach everywhere
    cidr_block = "0.0.0.0/0"
    //CRT uses this IGW to reach internet
    gateway_id = aws_internet_gateway.kalai-igw.id
  }

  tags = {
    Name = "kalai-public-crt"
  }
}
