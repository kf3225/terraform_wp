resource "aws_security_group" "security_group" {
  name   = "${var.usage}-security-group"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.usage}-security-group"
  }
}

resource "aws_security_group_rule" "security_group_rule" {
  for_each          = var.security_group_rules
  type              = each.key
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_block
  security_group_id = aws_security_group.security_group.id
}
