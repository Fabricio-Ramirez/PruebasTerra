
provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./modules/vpc"
  subnet_cidr         = var.subnet_cidr
  availability_zone_1 = var.availability_zone_1
  subnet_cidr_2       = var.subnet_cidr_2
  availability_zone_2 = var.availability_zone_2
}

module "ec2_asg" {
  source     = "./modules/ec2_asg"
  subnet_ids = module.vpc.subnet_ids
}

module "lb" {
  source     = "./modules/lb"
  subnet_ids = module.vpc.subnet_ids
  vpc_id     = module.vpc.vpc_id
  asg_name   = module.ec2_asg.asg_name
}
