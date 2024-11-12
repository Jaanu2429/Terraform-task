variable "db_identifier" {
  type    = string
  default = "mysql8.0"
}

variable "db_engine" {
  type    = string
  default = "mysql"
}

variable "db_instance_class" {
  type    = string
  default = "db.t3.small"
}

variable "db_allocated_storage" {
  type    = number
  default = 20
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type      = string
  default   = "admin@123"
  sensitive = true  # This hides the password in logs
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = ["sg-05950ade62c8fe698", "sg-0156bf470f391edfd", "sg-0b79f045cc19b6911"]
}

variable "db_subnet_group_name" {
  type    = string
  default = "default"  # Make sure this is the actual name of your DB subnet group
}

variable "environment" {
  type    = string
  default = "dev"  # Set a default value, such as "dev", "staging", or "prod"
}

