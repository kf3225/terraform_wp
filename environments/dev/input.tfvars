env_name = "dev"
region   = "ap-northeast-1"
usage    = "wordpress"

#################################################
# VPC
#################################################
cidr_block = "10.0.0.0/16"
public_subnet = {
  azs        = ["ap-northeast-1a", "ap-northeast-1c"]
  cidr_block = ["10.0.0.0/24", "10.0.2.0/24"]
  name       = "public-subnet"
}
private_subnet = {
  azs        = ["ap-northeast-1a", "ap-northeast-1c"]
  cidr_block = ["10.0.1.0/24", "10.0.3.0/24"]
  name       = "private-subnet"
}

#################################################
# EC2
#################################################
instance_type = "t2.micro"

#################################################
# Security Group
#################################################
security_group_rules = {
  ingress = {
    from_port  = "80"
    to_port    = "80"
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
  egress = {
    from_port  = "0"
    to_port    = "0"
    protocol   = "-1"
    cidr_block = ["0.0.0.0/0"]
  }
}

#################################################
# RDS
#################################################
engine_name = "mysql"
major_engine_version = "5.7"
charset = "utf8mb4"
option_name = "MARIADB_AUDIT_PLUGIN"
