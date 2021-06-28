variable "env_name" {
  type        = string
  default     = "dev"
  description = "environment name"
}

variable "ami_id" {
  type        = string
  default     = ""
  description = "ami id of ec2 instance"
}

variable "instance_type" {
  type        = string
  default     = ""
  description = "instance type of ec2 instance"
}

variable "public_subnet" {
  type        = any
  default     = {}
  description = "public subnet list"
}

variable "private_subnet" {
  type        = any
  default     = {}
  description = "private subnet list"
}
