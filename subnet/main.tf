data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "private" {
  count             = length(var.subnets)
  vpc_id            = var.vpc_id
  cidr_block        = var.subnets[count.index]
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "${var.vpc_name}-subnet-private${count.index + 1}-${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "public" {
  count             = var.public_subnet != null ? 1 : 0
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet
  availability_zone = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "${var.vpc_name}-subnet-public-${element(data.aws_availability_zones.available.names, 0)}"
  }
}

