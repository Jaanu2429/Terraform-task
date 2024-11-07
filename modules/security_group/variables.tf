variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ingress_rules" {
  description = "A list of ingress rules for the security group"
  type        = list(string)
}

variable "egress_rules" {
  description = "A list of egress rules for the security group"
  type        = list(string)
}

variable "environment" {
  description = "The environment (dev, staging, production)"
  type        = string
}
