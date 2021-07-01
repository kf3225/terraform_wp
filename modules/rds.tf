variable "engine_name" {}
variable "major_engine_version" {}
variable "charset" {}
variable "option_name" {}

module "rds" {
  source = "../../components/rds"

  env_name = var.env_name
  usage = var.usage
  region = var.region
  engine_name = var.engine_name
  major_engine_version = var.major_engine_version
  charset = var.charset
  option_name = var.option_name
  private_subnet_ids = [ for subnet in module.vpc.private_subnet : subnet.id ]
}
