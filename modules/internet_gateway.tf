module "internet_gateway" {
  source = "../../components/internet_gateway"

  env_name = var.env_name
  region   = var.region
  usage    = var.usage
  vpc_id   = module.vpc.vpc_id
}
