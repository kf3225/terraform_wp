output "kms_key" {
  value = [for key in aws_kms_key.kms_key : key]
}
