variable "region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
}

# VPC variables
variable "vpc_name" { type = string }
variable "vpc_cidr" { type = string }
variable "azs" { type = list(string) }
variable "private_subnets" { type = list(string) }
variable "public_subnets" { type = list(string) }

# Security Group variables
variable "sg_name" { type = string }
variable "sg_description" { type = string }
variable "ingress_rules" { type = list(string) }
variable "egress_rules" { type = list(string) }

# RDS variables
variable "db_identifier" { type = string }
variable "db_engine" { type = string }
variable "db_instance_class" { type = string }
variable "db_allocated_storage" { type = number }
variable "db_username" { type = string }
variable "db_password" { type = string }

# EC2 variables
variable "ami_id" { type = string }
variable "instance_type" { type = string }
variable "key_name" { type = string }

# EKS variables
variable "cluster_name" { type = string }
variable "cluster_version" { type = string }
