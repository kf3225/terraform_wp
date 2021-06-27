variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment type"
}

variable "region" {
  type        = string
  default     = ""
  description = "region"
}

variable "cidr_block" {
  type        = string
  default     = ""
  description = "cidr block of vpc"
}

variable "public_subnet" {
  type = object({
    azs        = list(string)
    cidr_block = list(string)
    name       = string
  })
  default = {
    azs        = []
    cidr_block = []
    name       = "public_subnet"
  }
  description = "public subnet settings"
}

variable "private_subnet" {
  type = object({
    azs        = list(string)
    cidr_block = list(string)
    name       = string
  })
  default = {
    azs        = []
    cidr_block = []
    name       = "private_subnet"
  }
  description = "private subnet settings"
}
