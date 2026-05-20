resource "aws_vpc" "VPC_OBG" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "VPC_OBG"
  }
}

resource "aws_subnet" "VPC_subnet" {
  vpc_id     = aws_vpc.VPC_OBG.id
  cidr_block = cidrsubnet(aws_vpc.VPC_OBG.cidr_block, 8, 0)

  tags = {
    Name = "VPC_subnet"
  }
}

resource "aws_security_group" "Allow_SSH" {
  name        = "Allow_SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.VPC_OBG.id

  ingress {
    description      = "SSH from anywhere"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow_SSH"
  }
}

output "vpc_id" {
  value = aws_vpc.VPC_OBG.id
}

output "subnet_id" {
  value = aws_subnet.VPC_subnet.id
}

output "sg_id" {
  value = aws_security_group.Allow_SSH.id
}
