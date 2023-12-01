resource "aws_internet_gateway" "igw-lh" {
  vpc_id = aws_vpc.vpc-lh.id

  tags = {
    Name = "igw-lh"
  }
}
