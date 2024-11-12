region = "ap-south-1"
<<<<<<< HEAD
environment = "dev"
=======
>>>>>>> 172d41c (Updated Terraform configurations and variables)
vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"
azs = ["ap-south-1a"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]

# Security group variables
sg_name = "app-sg"
sg_description = "Security group for app instances"

# RDS variables
db_identifier = "mysql"
db_engine = "mysql"
db_instance_class = "db.t3.medium"
db_allocated_storage = 20
db_username = "admin"
db_password = "admin@123"
vpc_security_group_ids = ["sg-05950ade62c8fe698", "sg-0156bf470f391edfd", "sg-0b79f045cc19b6911"]
db_subnet_group_name   = "default"

environment = "dev"


# EC2 variables
ami_id = "ami-03753afda9b8ba740"
instance_type = "t2.micro"
key_name = "my-key-pair"

# EKS variables
cluster_name = "my-eks-cluster"
version = "20.28.0"
cluster_version = "1.25"
