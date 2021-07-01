resource "aws_kms_key" "kms_key" {
  for_each                = toset(var.kms_key)
  description             = "kms key of ${each.value}"
  enable_key_rotation     = true
  is_enabled              = true
  deletion_window_in_days = 10

  tags = {
    "Name" = "${each.value}-kms-key"
  }
}

resource "aws_kms_alias" "kms_alias" {
  for_each      = aws_kms_key.kms_key
  name          = "alias/${each.key}"
  target_key_id = aws_kms_key.kms_key[each.key].key_id
}
