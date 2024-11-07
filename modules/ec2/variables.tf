variable "instance_name" { type = string }
variable "ami_id" { type = string }
variable "instance_type" { type = string }
variable "subnet_id" { type = string }
variable "key_name" { type = string }
variable "vpc_security_group_ids" { type = list(string) }
variable "environment" { type = string }
