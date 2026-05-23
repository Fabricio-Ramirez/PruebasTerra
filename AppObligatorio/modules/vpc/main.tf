
data "aws_vpc" "existing_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

resource "aws_subnet" "new_subnet" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  resource "aws_subnet" "new_subnet_2" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.availability_zone_2

  tags = {
    Name = "WorkerSubnet2"
  }
}
