variable "security_group_rules" {}

module "security_group" {
  source = "../../components/security_group"

  env_name             = var.env_name
  region               = var.region
  usage                = var.usage
  vpc_id               = module.vpc.vpc_id
  security_group_rules = var.security_group_rules
}
