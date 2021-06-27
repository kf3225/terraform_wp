env_name = "dev"
region   = "ap-northeast-1"

cidr_block = "10.0.0.0/16"

subnet_settings = [
  {
    azs        = ["ap-northeast-1a", "ap-northeast-1c"]
    cidr_block = ["10.0.0.0/24", "10.0.2.0/24"]
    name       = "public_subnet"
  },
  {
    azs        = ["ap-northeast-1a", "ap-northeast-1c"]
    cidr_block = ["10.0.1.0/24", "10.0.3.0/24"]
    name       = "private_subnet"
  }
]
