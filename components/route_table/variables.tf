variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment name"
}

variable "usage" {
  type        = string
  default     = ""
  description = "usage of this program"
}

variable "region" {
  type        = string
  default     = ""
  description = "region name"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "vpc id"
}

variable "igw_id" {
  type        = string
  default     = ""
  description = "internet gateway id"
}

variable "public_subnet_ids" {
  type        = list(string)
  default     = []
  description = "public subnet id list"
}

variable "private_subnet_ids" {
  type        = list(string)
  default     = []
  description = "private subnet id list"
}
