locals {
  public_subnet = [for i in range(length(var.public_subnet.azs)) : {
    azs        = var.public_subnet.azs[i]
    cidr_block = var.public_subnet.cidr_block[i]
    name       = var.public_subnet.name
  }]
  private_subnet = [for i in range(length(var.private_subnet.azs)) : {
    azs        = var.private_subnet.azs[i]
    cidr_block = var.private_subnet.cidr_block[i]
    name       = var.private_subnet.name
  }]
}

#################################################
# VPC
#################################################
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "wordpress-${var.env_name}-aws-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc.id

  count             = length(local.public_subnet)
  availability_zone = local.public_subnet[count.index].azs
  cidr_block        = local.public_subnet[count.index].cidr_block

  tags = {
    "Name"        = "wordpress-${var.env_name}-${local.public_subnet[count.index].name}-subnet-${local.public_subnet[count.index].azs}"
    "Subnet-type" = "${local.public_subnet[count.index].name}"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc.id

  count             = length(local.private_subnet)
  availability_zone = local.private_subnet[count.index].azs
  cidr_block        = local.private_subnet[count.index].cidr_block

  tags = {
    "Name"        = "wordpress-${var.env_name}-${local.private_subnet[count.index].name}-subnet-${local.private_subnet[count.index].azs}"
    "Subnet-type" = "${local.private_subnet[count.index].name}"
  }
}
