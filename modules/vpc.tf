variable "cidr_block" {}
variable "public_subnet" {}
variable "private_subnet" {}

module "vpc" {
  source = "../../components/vpc"

  env_name       = var.env_name
  region         = var.region
  cidr_block     = var.cidr_block
  public_subnet  = var.public_subnet
  private_subnet = var.private_subnet
}
