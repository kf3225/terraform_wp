variable "env_name" {}
variable "region" {}
variable "cidr_block" {}
variable "subnet_settings" {}

module "vpc" {
  source = "../../components/vpc"

  env_name        = var.env_name
  region          = var.region
  cidr_block      = var.cidr_block
  subnet_settings = var.subnet_settings
}
