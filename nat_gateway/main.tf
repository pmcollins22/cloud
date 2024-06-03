resource "aws_eip" "nat" {
    

  tags = {
    Name = var.name
  }
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet.id

  tags = {
    Name = var.name
  }
}