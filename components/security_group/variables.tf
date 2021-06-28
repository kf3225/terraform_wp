variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment name"
}

variable "region" {
  type        = string
  default     = ""
  description = "region name"
}

variable "usage" {
  type        = string
  default     = ""
  description = "usage of this program"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "vpc id"
}

variable "security_group_rules" {
  type = map(object({
    from_port  = string
    to_port    = string
    protocol   = string
    cidr_block = list(string)
  }))
  default     = {}
  description = "security group rules"
}
