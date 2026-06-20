module "vpc-module" {
    source = "./modules/vpc-module"
    vpc_cidr_block = var.vpc_cidr_block
}

