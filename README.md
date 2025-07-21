<!-- BEGIN_TF_DOCS -->
# Quick AWS ECS Fargate Service

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Terraform project which create VPC, ALB and ECS Fargate Service resource on AWS from scratch.

## *Create and destroy the infrastructure*

### 1. Create infrastructure

```shell
git clone https://github.com/mbasri/quick-aws-ecs-fargate-service.git
cd quick-aws-ecs-fargate-service
terraform init
terraform apply
```

### 2. Destroy infrastructure

```shell
git clone https://github.com/mbasri/quick-aws-ecs-fargate-service.git
cd quick-aws-ecs-fargate-service
terraform init
terraform destroy
```

## *Use the ECS Fargate Service*

### 1. API call

See the Terrafom output 'api_url' to call the API

## *Generate docs*

```shell
terraform-docs -c .terraform-docs.yml .
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.12.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs-cluster"></a> [ecs-cluster](#module\_ecs-cluster) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-ecs-cluster | v1.1.0 |
| <a name="module_kms"></a> [kms](#module\_kms) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-kms | v1.4.0 |
| <a name="module_security-group-alb"></a> [security-group-alb](#module\_security-group-alb) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group | v1.3.0 |
| <a name="module_security-group-task"></a> [security-group-task](#module\_security-group-task) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group | v1.2.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-vpc | v1.8.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The ARN of the ECS Cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the ECS Cluster |
| <a name="output_container_insights_cwl_id"></a> [container\_insights\_cwl\_id](#output\_container\_insights\_cwl\_id) | The CloudWatch Log Group ID for the container insights logs |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | The ID of the VPC default security group |
| <a name="output_key_alias_arn"></a> [key\_alias\_arn](#output\_key\_alias\_arn) | The Amazon Resource Name (ARN) of the key alias |
| <a name="output_key_alias_name"></a> [key\_alias\_name](#output\_key\_alias\_name) | Name of the key alis |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | The Amazon Resource Name (ARN) of the key |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | Name of the key |
| <a name="output_key_policy"></a> [key\_policy](#output\_key\_policy) | The IAM resource policy set on the key |
| <a name="output_nat_gateway_public_ips"></a> [nat\_gateway\_public\_ips](#output\_nat\_gateway\_public\_ips) | Private IP of NAT Gateway |
| <a name="output_private_subnet_cidr"></a> [private\_subnet\_cidr](#output\_private\_subnet\_cidr) | List of cidr\_blocks of private subnets |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | List of IDs of private subnets |
| <a name="output_public_subnet_cidr"></a> [public\_subnet\_cidr](#output\_public\_subnet\_cidr) | List of cidr\_blocks of public subnets |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | List of IDs of public subnets |
| <a name="output_region"></a> [region](#output\_region) | The Name of the region |
| <a name="output_secure_subnet_cidr"></a> [secure\_subnet\_cidr](#output\_secure\_subnet\_cidr) | List of cidr\_blocks of secure subnets |
| <a name="output_secure_subnet_ids"></a> [secure\_subnet\_ids](#output\_secure\_subnet\_ids) | List of IDs of secure subnets |
| <a name="output_security_group_arn_alb"></a> [security\_group\_arn\_alb](#output\_security\_group\_arn\_alb) | The ARN of the security group |
| <a name="output_security_group_arn_task"></a> [security\_group\_arn\_task](#output\_security\_group\_arn\_task) | The ARN of the security group |
| <a name="output_security_group_description_alb"></a> [security\_group\_description\_alb](#output\_security\_group\_description\_alb) | The description of the security group |
| <a name="output_security_group_description_task"></a> [security\_group\_description\_task](#output\_security\_group\_description\_task) | The description of the security group |
| <a name="output_security_group_id_alb"></a> [security\_group\_id\_alb](#output\_security\_group\_id\_alb) | The ID of the security group |
| <a name="output_security_group_id_task"></a> [security\_group\_id\_task](#output\_security\_group\_id\_task) | The ID of the security group |
| <a name="output_security_group_name_alb"></a> [security\_group\_name\_alb](#output\_security\_group\_name\_alb) | The name of the security group |
| <a name="output_security_group_name_task"></a> [security\_group\_name\_task](#output\_security\_group\_name\_task) | The name of the security group |
| <a name="output_security_group_owner_id_alb"></a> [security\_group\_owner\_id\_alb](#output\_security\_group\_owner\_id\_alb) | The owner ID |
| <a name="output_security_group_owner_id_task"></a> [security\_group\_owner\_id\_task](#output\_security\_group\_owner\_id\_task) | The owner ID |
| <a name="output_security_group_vpc_id_alb"></a> [security\_group\_vpc\_id\_alb](#output\_security\_group\_vpc\_id\_alb) | The VPC ID |
| <a name="output_security_group_vpc_id_task"></a> [security\_group\_vpc\_id\_task](#output\_security\_group\_vpc\_id\_task) | The VPC ID |
| <a name="output_spot_logs_cwl_id"></a> [spot\_logs\_cwl\_id](#output\_spot\_logs\_cwl\_id) | The IDs of the cloudwatch logs for Spot logging |
| <a name="output_system_logs_cwl_id"></a> [system\_logs\_cwl\_id](#output\_system\_logs\_cwl\_id) | The IDs of the cloudwatch logs for VM system logs |
| <a name="output_vpc_cidr_blocks"></a> [vpc\_cidr\_blocks](#output\_vpc\_cidr\_blocks) | The CIDR block of the VPC |
| <a name="output_vpc_flow_logs_cwl_id"></a> [vpc\_flow\_logs\_cwl\_id](#output\_vpc\_flow\_logs\_cwl\_id) | The ID of the cloudwatch logs for VPC flow logs |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |

## *Author*

* [**Mohamed BASRI**](https://github.com/mbasri)

## *License*

This is free and unencumbered software released into the public domain - see the [LICENSE](./LICENSE) file for details

<!-- END_TF_DOCS -->