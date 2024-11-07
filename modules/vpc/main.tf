module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"

  # Basic VPC settings
  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = var.azs
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets

  # Enable components
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_nat_gateway   = true
  single_nat_gateway   = true
  reuse_nat_ips        = false
  enable_internet_gateway = true

  # Tags
  tags = {
    "Environment" = var.environment
    "Name"        = var.vpc_name
  }
  
  # Route table association for subnets
  public_subnet_tags = {
    "Type" = "public"
  }
  
  private_subnet_tags = {
    "Type" = "private"
  }
}
