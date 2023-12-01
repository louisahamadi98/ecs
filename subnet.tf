resource "aws_subnet" "subnet1-lh" {
  vpc_id            = aws_vpc.vpc-lh.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "subnet1-lh"
  }
}

resource "aws_subnet" "subnet2-lh" {
  vpc_id            = aws_vpc.vpc-lh.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "subnet2-lh"
  }
}

resource "aws_subnet" "subnet3-lh" {
  vpc_id            = aws_vpc.vpc-lh.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "subnet3-lh"
  }
}
