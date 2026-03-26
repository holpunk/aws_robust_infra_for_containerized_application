terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "local" {
    # Store terraform state file in another directory (representing another git repo)
    path = "../terraform-state-repo/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source = "./modules/networking"

  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
}

module "security" {
  source = "./modules/security"

  project_name   = var.project_name
  vpc_id         = module.networking.vpc_id
  container_port = var.container_port
}

module "acm" {
  source = "./modules/acm"

  domain_name  = var.domain_name
  project_name = var.project_name
}

module "load_balancer" {
  source = "./modules/load_balancer"

  project_name      = var.project_name
  vpc_id            = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids
  alb_sg_id         = module.security.alb_sg_id
  container_port    = var.container_port
  certificate_arn   = module.acm.certificate_arn
}

module "compute" {
  source = "./modules/compute"

  project_name            = var.project_name
  private_subnet_ids      = module.networking.private_subnet_ids
  public_subnet_ids       = module.networking.public_subnet_ids
  eks_node_instance_types = var.eks_node_instance_types
  eks_desired_size        = var.eks_desired_size
}

module "dns" {
  source = "./modules/dns"

  domain_name  = var.domain_name
  alb_dns_name = module.load_balancer.alb_dns_name
  alb_zone_id  = module.load_balancer.alb_zone_id
}
