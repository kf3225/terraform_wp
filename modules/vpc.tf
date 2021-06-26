variable "env_name" {}
variable "cidr_block" {}

module "vpc" {
  source = "../../components/vpc"

  env_name   = var.env_name
  cidr_block = var.cidr_block
}
