output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnets
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "s3_bucket_name" {
  value = module.s3.bucket_id
}

output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}
