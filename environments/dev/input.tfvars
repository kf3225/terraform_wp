env_name = "dev"
region   = "ap-northeast-1"

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
