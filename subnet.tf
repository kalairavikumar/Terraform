#Creating subnets
variable "subnet_cidr" {
  default = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20", "10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
}

variable "subnet_azs" {
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

resource "aws_subnet" "my_subnets" {
  count             = 6
  vpc_id            = aws_vpc.kalai-test.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
}
