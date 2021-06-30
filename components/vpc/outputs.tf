output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet" {
  value = [ for subnet in aws_subnet.public_subnet : subnet ]
}

output "private_subnet" {
  value = [ for subnet in aws_subnet.private_subnet : subnet ]
}
