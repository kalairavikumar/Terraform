resource "aws_internet_gateway" "kalai-igw" {
  vpc_id = aws_vpc.kalai-test.id
  tags = {
    Name = "kalai-igw"
  }
}
