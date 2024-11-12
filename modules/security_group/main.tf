module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = module.vpc.vpc_id

  tags = {
    "Environment" = var.environment
  }
}

