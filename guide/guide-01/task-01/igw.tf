resource "aws_internet_gateway" "stdio-gateway" {
  vpc_id = "${aws_vpc.stdio-vpc.id}"
  tags = {
    Name = "stdio-gateway"
  }
}