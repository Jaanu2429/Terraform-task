module "rds" {
  source = "terraform-aws-modules/rds/aws"
  version = "6.10.0"

  identifier = var.db_identifier
  engine = var.db_engine
  instance_class = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  username = var.db_username
  password = var.db_password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = var.db_subnet_group_name

  tags = {
    "Environment" = var.environment
  }
}
