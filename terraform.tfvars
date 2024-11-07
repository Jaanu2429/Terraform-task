region = "us-east-1"
environment = "dev"
vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"
azs = ["us-east-1a", "us-east-1b"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]

# Security group variables
sg_name = "app-sg"
sg_description = "Security group for app instances"
ingress_rules = ["ssh", "http-80-tcp", "https-443-tcp"]
egress_rules = ["all-all"]

# RDS variables
db_identifier = "postgres-db"
db_engine = "postgres"
db_instance_class = "db.t3.medium"
db_allocated_storage = 20
db_username = "admin"
db_password = "admin@123"

# EC2 variables
ami_id = "ami-12345"
instance_type = "t2.micro"
key_name = "my-key-pair"

# EKS variables
cluster_name = "my-eks-cluster"
cluster_version = "1.21"
