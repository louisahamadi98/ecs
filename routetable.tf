resource "aws_route_table" "rt-lh" {
  vpc_id = aws_vpc.vpc-lh.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-lh.id
  }

  tags = {
    Name = "rt-lh"
  }
}

resource "aws_route_table_association" "rta-1-lh" {
  subnet_id      = aws_subnet.subnet1-lh.id
  route_table_id = aws_route_table.rt-lh.id
}

resource "aws_route_table_association" "rta-2-lh" {
  subnet_id      = aws_subnet.subnet2-lh.id
  route_table_id = aws_route_table.rt-lh.id
}

resource "aws_route_table_association" "rta-3-lh" {
  subnet_id      = aws_subnet.subnet3-lh.id
  route_table_id = aws_route_table.rt-lh.id
}
