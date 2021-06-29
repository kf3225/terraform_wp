resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    "Name" = "${var.usage}-${var.env_name}-igw-${var.region}"
  }
}
