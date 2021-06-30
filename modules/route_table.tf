module "route_table" {
  source = "../../components/route_table"

  env_name = var.env_name
  usage = var.usage
  region = var.region
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = [for subnet in module.vpc.public_subnet : subnet.id ]
  private_subnet_ids = [for subnet in module.vpc.private_subnet : subnet.id ]
  igw_id = module.internet_gateway.internet_gateway.id
}
