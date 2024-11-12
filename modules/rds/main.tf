module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.10.0"

  identifier               = var.db_identifier
  engine                   = var.db_engine       # Specify the database engine
  instance_class           = var.db_instance_class
  allocated_storage        = var.db_allocated_storage
  username                 = var.db_username
  password                 = var.db_password
  vpc_security_group_ids   = var.vpc_security_group_ids
  db_subnet_group_name     = var.db_subnet_group_name
  publicly_accessible      = false
  

 # Explicitly disable custom option and parameter groups
  create_db_option_group    = false
  create_db_parameter_group = false

  tags = {
    "Environment" = var.environment
  }
}

