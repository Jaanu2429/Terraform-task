module "ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  name = var.instance_name
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    "Environment" = var.environment
  }
}
