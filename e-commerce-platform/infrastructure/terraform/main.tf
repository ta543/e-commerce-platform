provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/infrastructure/vpc"
  
  region                    = var.region
  vpc_cidr                  = var.vpc_cidr
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  availability_zones        = var.availability_zones
}

module "eks" {
  source       = "./modules/infrastructure/eks"

  region                    = var.region
  cluster_name     = "my-eks-cluster"
  subnet_ids       = module.vpc.subnet_ids
  node_group_name  = "my-eks-node-group"
  node_desired_size = 2
  node_min_size     = 1
  node_max_size     = 3
}

module "app_mesh" {
  source       = "./modules/infrastructure/app-mesh"

  region                    = var.region
}

module "databases" {
  source       = "./modules/infrastructure/databases"

  region                    = var.region
  vpc_id          = module.vpc.vpc_id
  db_name         = "mydatabase"
  db_username     = "admin"
  db_password     = "123"
  db_ingress_cidr = "0.0.0.0/0"
}

module "cloudwatch" {
  source       = "./modules/observability/cloudwatch"

  region                    = var.region
  notification_arn          = var.notification_arn
}

module "elasticsearch" {
  source       = "./modules/observability/elasticsearch"

  region                    = var.region
  es_domain_name    = "my-es-domain"
  es_version        = "7.9"
  es_instance_type  = "t2.small.elasticsearch"
  es_instance_count = 1
  es_ebs_enabled    = true
  es_volume_size    = 10
}

module "x_ray" {
  source       = "./modules/observability/x-ray"

  region                    = var.region
}
