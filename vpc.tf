# Create a VPC
resource "aws_vpc" "kalai-test" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "kalai-vpc"
  }
}
