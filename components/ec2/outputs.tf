output "public_instance_id" {
  value = [for instance in aws_instance.public_instance : instance.id]
}

output "private_instance_id" {
  value = [for instance in aws_instance.private_instance : instance.id]
}

output "public_instance_arn" {
  value = [for instance in aws_instance.public_instance : instance.arn]
}

output "private_instance_arn" {
  value = [for instance in aws_instance.private_instance : instance.arn]
}
