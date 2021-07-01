variable "kms_key" {}

module "kms_key" {
  source = "../../components/kms"

  kms_key = var.kms_key
}
