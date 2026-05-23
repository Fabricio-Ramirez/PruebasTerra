
provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source            = "./modules/vpc"
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
}

module "ec2_asg" {
  source    = "./modules/ec2_asg"
  subnet_id = module.vpc.subnet_id
}

module "lb" {
  source    = "./modules/lb"
  subnet_id = module.vpc.subnet_id
  vpc_id    = module.vpc.vpc_id
  asg_name  = module.ec2_asg.asg_name
}
