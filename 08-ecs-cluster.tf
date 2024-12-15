#---------------------------------------------------------------------------------------------------
# ECS Cluster
#---------------------------------------------------------------------------------------------------
module "ecs-cluster" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-ecs-cluster?ref=v1.0.0"

  ecs_cluster_name = var.ecs_cluster_name
  kms_arn          = module.kms.key_arn

  tags = local.tags
}
