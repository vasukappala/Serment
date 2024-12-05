variable "region" {
description = "AWS region"
type = string
default = "us-east-1"
}

variable "vpc_cidr" {

description = "cidr value"
type = string

}

variable "public_subnet" {

description = "public subnet"
type = string

}

variable "private_subnet" {

  description = "private subnet value"
  type = string

}
variable "environment" {

description = "environment name"
type = string

}