provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "anusha2429-demo"  # Replace with your bucket name
    key    = "dev/terraform.tfstate"        # Use "dev", "staging", "prod"
    region = "us-east-1"
  }
}

# VPC Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = var.azs
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_nat_gateway   = true
  enable_internet_gateway = true

  tags = {
    "Environment" = var.environment
  }
}

# Security Group Module
module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = module.vpc.vpc_id

  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules

  tags = {
    "Environment" = var.environment
  }
}

# RDS Module
module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.10.0"

  identifier               = var.db_identifier
  engine                   = var.db_engine
  instance_class           = var.db_instance_class
  allocated_storage        = var.db_allocated_storage
  username                 = var.db_username
  password                 = var.db_password
  vpc_security_group_ids   = [module.security_group.security_group_id]
  db_subnet_group_name     = module.vpc.database_subnet_group_name
  publicly_accessible      = false

  tags = {
    "Environment" = var.environment
  }
}

# EC2 Module
module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  name                   = "${terraform.workspace}-ec2"
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = var.key_name
  vpc_security_group_ids = [module.security_group.security_group_id]

  tags = {
    "Environment" = var.environment
  }
}

# S3 Module
module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.1"

  bucket = "${terraform.workspace}-app-bucket"
  acl    = "private"

  tags = {
    "Environment" = var.environment
  }
}

# EKS Module
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.28.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets
  enable_irsa     = true

  tags = {
    "Environment" = var.environment
  }
}
