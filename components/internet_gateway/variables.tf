variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment name"
}

variable "region" {
  type        = string
  default     = ""
  description = "region"
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
