variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  
}

variable "public_subnet" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "environment" {
  description = "Environment name for tagging"
  type        = string
}
