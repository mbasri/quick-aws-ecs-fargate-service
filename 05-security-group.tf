#---------------------------------------------------------------------------------------------------
# ALB Security Group
#---------------------------------------------------------------------------------------------------
module "security-group-alb" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group?ref=v1.2.0"

  vpc_id = module.vpc.vpc_id

  security_group_name = "${local.security_group_name}-alb"
  description         = local.description

  ingress_rules = [
    {
      ip_protocol = "tcp"
      from_port   = "80"
      to_port     = "80"
      cidr_ipv4   = "0.0.0.0/0"
      description = "[Terraform] HTTP from Internet"
    },
    {
      ip_protocol = "tcp"
      from_port   = "443"
      to_port     = "443"
      cidr_ipv4   = "0.0.0.0/0"
      description = "[Terraform] HTTPS from Internet"
    }
  ]

  tags = local.tags
}

#---------------------------------------------------------------------------------------------------
# Task Security Group
#---------------------------------------------------------------------------------------------------
module "security-group-task" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group?ref=v1.2.0"

  vpc_id = module.vpc.vpc_id

  security_group_name = "${local.security_group_name}-task"
  description         = local.description

  ingress_rules_with_referenced_security_group_id = [
    {
      ip_protocol       = "tcp"
      from_port         = "443"
      to_port           = "443"
      security_group_id = module.security-group-alb.security_group_id
      description       = "[Terraform] HTTPS from ALB"
    }
  ]

  egress_rules = [
    {
      ip_protocol = "tcp"
      from_port   = "80"
      to_port     = "80"
      cidr_ipv4   = "0.0.0.0/0"
      description = "[Terraform] HTTP for Internet"
    },
    {
      ip_protocol = "tcp"
      from_port   = "443"
      to_port     = "443"
      cidr_ipv4   = "0.0.0.0/0"
      description = "[Terraform] HTTPS for Internet"
    }
  ]

  tags = local.tags
}
