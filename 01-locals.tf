#---------------------------------------------------------------------------------------------------
# locals variables
#---------------------------------------------------------------------------------------------------
locals {
  name   = "quick-aws-ecs-fargate-service"
  region = "eu-west-3"

  description = "Quick AWS ECS Fargate Service"

  kms_name            = local.name
  vpc_name            = local.name
  security_group_name = local.name
  alb_name            = local.name
  iam_name            = local.name
  ecs_cluster_name    = local.name
  ecs_service_name    = local.name

  tags = {
    "Name"        = local.name,
    "Description" = "Quick AWS ECS Fargate Service",

    "billing:organisation"      = "mbasri",
    "billing:organisation-unit" = "labs",
    "billing:application"       = "quick-aws-ecs-fargate-service",
    "billing:environment"       = "dev",

    "security:compliance"     = "HIPAA",
    "security:data-sensitity" = "1",
    "security:encryption"     = "true",

    "technical:terraform"                     = "true",
    "technical:terraform:scm"                 = "https://gitlab.com/mbasri/quick-aws-ecs-fargate-service.git",
    "technical:terraform:required-version"    = "1.12.2",
    "technical:provider:aws:required-version" = "6.4.0"
  }
}
