variable "instance_type" {}

data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
}

module "ec2" {
  source = "../../components/ec2"

  env_name          = var.env_name
  ami_id            = data.aws_ami.amazon_linux2.id
  instance_type     = var.instance_type
  public_subnet     = module.vpc.public_subnet
  private_subnet    = module.vpc.private_subnet
  security_group_id = module.security_group.security_group_id

}
