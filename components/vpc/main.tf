resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "cidr block"
  }
}

resource "aws_subnet" "multi_subnet" {
  vpc_id = aws_vpc.vpc.id

  count      = 4
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, count.index)

  tags = {
    "Name" = (count.index % 2 == 0 ?
      "wordpress-${var.env_name}-public-subnet-${count.index}" :
      "wordpress-${var.env_name}-private-subnet-${count.index}"
    )
  }
}
