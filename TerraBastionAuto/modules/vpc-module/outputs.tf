
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.viva_vpc.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.viva_subnet.id
}

output "sg_id" {
  description = "The ID of the security group"
  value       = aws_security_group.viva_sg.id
}
