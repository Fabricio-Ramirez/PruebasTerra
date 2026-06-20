module "vpc-module" {
    source = "./modules/vpc-module"
    vpc_cidr_block = var.vpc_cidr_block
}

module "SG-module" {
    source = "./modules/SG-module"
    vpc_id = module.vpc-module.vpc_id
}