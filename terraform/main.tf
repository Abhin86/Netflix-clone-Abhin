module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = var.vpc_cidr
  region     = var.region
  cluster_name = var.cluster_name
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  cluster_version = var.eks_version
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  public_subnets  = module.vpc.public_subnets
}