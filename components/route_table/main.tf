resource "aws_route_table" "public_instance_route_table" {
  vpc_id = var.vpc_id

  tags = {
    "Name" = "${var.usage}-${var.env_name}-public-route-table-${var.region}"
  }
}

resource "aws_route_table" "private_instance_route_table" {
  vpc_id = var.vpc_id

  tags = {
    "Name" = "${var.usage}-${var.env_name}-private-route-table-${var.region}"
  }
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.public_instance_route_table.id
  gateway_id             = var.igw_id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "public" {
  count          = length(var.public_subnet_ids)
  subnet_id      = var.public_subnet_ids[count.index]
  route_table_id = aws_route_table.public_instance_route_table.id
}

resource "aws_route_table_association" "private" {
  count          = length(var.private_subnet_ids)
  subnet_id      = var.private_subnet_ids[count.index]
  route_table_id = aws_route_table.private_instance_route_table.id
}
