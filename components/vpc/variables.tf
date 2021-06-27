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

variable "subnet_settings" {
  type = list(object({
    azs        = list(string)
    cidr_block = list(string)
    name       = string
  }))
  default     = []
  description = "subnet settings list"
}
