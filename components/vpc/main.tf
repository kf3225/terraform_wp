locals {
  subnets = flatten([
    for subnet in var.subnet_settings : [
      for i in range(length(subnet.azs)) : {
        cidr_block = subnet.cidr_block[i]
        azs        = subnet.azs[i]
        name       = subnet.name
      }
    ]
  ])
}

#################################################
# VPC
#################################################

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "cidr block"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id

  count             = length(local.subnets)
  availability_zone = local.subnets[count.index].azs
  cidr_block        = local.subnets[count.index].cidr_block

  tags = {
    "Name" = "wordpress-${var.env_name}-${local.subnets[count.index].name}-subnet-${count.index + 1}"
  }
}
