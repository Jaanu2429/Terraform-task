output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
}

output "nat_gateway_ids" {
  description = "The IDs of the NAT Gateways"
  value       = module.vpc.natgw_ids
}

output "public_route_table_ids" {
  description = "The route table IDs for public subnets"
  value       = module.vpc.public_route_table_ids
}

output "private_route_table_ids" {
  description = "The route table IDs for private subnets"
  value       = module.vpc.private_route_table_ids
}
