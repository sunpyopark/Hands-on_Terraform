resource "aws_vpc" "stdio-vpc" {
  cidr_block = "10.10.10.0/24"
  tags = {
    Name = "stdio-vpc"
  }
}

resource "aws_subnet" "stdio-subnet-c" {
  vpc_id = "${aws_vpc.stdio-vpc.id}"
  cidr_block = "10.10.10.128/25"
  availability_zone = "us-east-1a"
}
