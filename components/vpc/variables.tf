variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment type"
}

variable "cidr_block" {
  type        = string
  default     = ""
  description = "cidr block"
}
