#---------------------------------------------------------------------------------------------------
# KMS
#---------------------------------------------------------------------------------------------------
output "key_arn" {
  description = "The Amazon Resource Name (ARN) of the key"
  value       = module.kms.key_arn
}

output "key_id" {
  description = "Name of the key"
  value       = module.kms.key_id
}

output "key_alias_arn" {
  description = "The Amazon Resource Name (ARN) of the key alias"
  value       = module.kms.key_alias_arn
}

output "key_alias_name" {
  description = "Name of the key alis"
  value       = module.kms.key_alias_name
}

output "key_policy" {
  description = "The IAM resource policy set on the key"
  value       = module.kms.key_policy
}

#---------------------------------------------------------------------------------------------------
# VPC
#---------------------------------------------------------------------------------------------------
output "region" {
  description = "The Name of the region"
  value       = module.vpc.region
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_blocks" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_blocks
}

output "nat_gateway_public_ips" {
  description = "Private IP of NAT Gateway"
  value       = module.vpc.nat_gateway_public_ips
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnet_ids
}

output "public_subnet_cidr" {
  description = "List of cidr_blocks of public subnets"
  value       = module.vpc.public_subnet_cidr
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnet_ids
}

output "private_subnet_cidr" {
  description = "List of cidr_blocks of private subnets"
  value       = module.vpc.private_subnet_cidr
}

output "secure_subnet_ids" {
  description = "List of IDs of secure subnets"
  value       = module.vpc.secure_subnet_ids
}

output "secure_subnet_cidr" {
  description = "List of cidr_blocks of secure subnets"
  value       = module.vpc.secure_subnet_cidr
}

output "default_security_group_id" {
  description = "The ID of the VPC default security group"
  value       = module.vpc.default_security_group_id
}

output "system_logs_cwl_id" {
  description = "The IDs of the cloudwatch logs for VM system logs"
  value       = module.vpc.system_logs_cwl_id
}

output "spot_logs_cwl_id" {
  description = "The IDs of the cloudwatch logs for Spot logging"
  value       = module.vpc.spot_logs_cwl_id
}

output "vpc_flow_logs_cwl_id" {
  description = "The ID of the cloudwatch logs for VPC flow logs"
  value       = module.vpc.vpc_flow_logs_cwl_id
}

#---------------------------------------------------------------------------------------------------
# Security Group
#---------------------------------------------------------------------------------------------------
# ALB
output "security_group_arn_alb" {
  description = "The ARN of the security group"
  value       = module.security-group-alb.security_group_arn
}

output "security_group_id_alb" {
  description = "The ID of the security group"
  value       = module.security-group-alb.security_group_id
}

output "security_group_vpc_id_alb" {
  description = "The VPC ID"
  value       = module.security-group-alb.security_group_vpc_id
}

output "security_group_owner_id_alb" {
  description = "The owner ID"
  value       = module.security-group-alb.security_group_owner_id
}

output "security_group_name_alb" {
  description = "The name of the security group"
  value       = module.security-group-alb.security_group_name
}

output "security_group_description_alb" {
  description = "The description of the security group"
  value       = module.security-group-alb.security_group_description
}

# Task
output "security_group_arn_task" {
  description = "The ARN of the security group"
  value       = module.security-group-task.security_group_arn
}

output "security_group_id_task" {
  description = "The ID of the security group"
  value       = module.security-group-task.security_group_id
}

output "security_group_vpc_id_task" {
  description = "The VPC ID"
  value       = module.security-group-task.security_group_vpc_id
}

output "security_group_owner_id_task" {
  description = "The owner ID"
  value       = module.security-group-task.security_group_owner_id
}

output "security_group_name_task" {
  description = "The name of the security group"
  value       = module.security-group-task.security_group_name
}

output "security_group_description_task" {
  description = "The description of the security group"
  value       = module.security-group-task.security_group_description
}

#---------------------------------------------------------------------------------------------------
# IAM
#---------------------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------------------
# ECS Cluster
#---------------------------------------------------------------------------------------------------
output "cluster_arn" {
  description = "The ARN of the ECS Cluster"
  value       = module.ecs-cluster.cluster_arn
}

output "cluster_name" {
  description = "The name of the ECS Cluster"
  value       = module.ecs-cluster.cluster_name
}

output "container_insights_cwl_id" {
  description = "The CloudWatch Log Group ID for the container insights logs"
  value       = module.ecs-cluster.container_insights_cwl_id
}


#---------------------------------------------------------------------------------------------------
# ECS Fargate Service
#---------------------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------------------
# Others
#---------------------------------------------------------------------------------------------------
