provider "aws" {
  region = var.region
}

module "vpc" {
  source       = "./Terraform/modules/vpc"
  public_az   = var.public_az
  private_az  = var.private_az
}

module "eks" {
  source       = "./Terraform/modules/eks"
  cluster_name = var.cluster_name
  subnet_ids   = [module.vpc.public_subnet_id, module.vpc.private_subnet_id]
  desired_size = var.desired_size
  max_size     = var.max_size
  min_size     = var.min_size
}

module "ecs" {
  source   = "./Terraform/modules/ecs"
  repo_name = var.repo_name
}
