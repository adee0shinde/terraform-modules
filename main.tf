
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id
}

module "networking" {
  source = "./modules/networking"

  vpc_id          = module.vpc.vpc_id
  public_subnet_1 = module.subnets.public_subnet_1_id
  public_subnet_2 = module.subnets.public_subnet_2_id
  private_subnet_1 = module.subnets.private_subnet_1_id
  private_subnet_2 = module.subnets.private_subnet_2_id
}
