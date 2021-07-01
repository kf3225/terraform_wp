variable "env_name" {
  type = string
  default = "dev"
  description = "environment name"
}

variable "usage" {
  type = string
  default = ""
  description = "usage of this program"
}

variable "region" {
  type = string
  default = ""
  description = "region name"
}

variable "engine_name" {
  type = string
  default = ""
  description = "RDS engine name"
}

variable "major_engine_version" {
  type = string
  default = ""
  description = "RDS engine version"
}

variable "charset" {
  type = string
  default = ""
  description = "RDS charset"
}

variable "option_name" {
  type = string
  default = ""
  description = "RDS option name"
}

variable "private_subnet_ids" {
  type = list(string)
  default = []
  description = "private subnet ids"
}
