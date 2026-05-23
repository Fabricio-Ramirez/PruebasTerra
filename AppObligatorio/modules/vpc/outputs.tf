
output "subnet_id" {
  value = aws_subnet.new_subnet.id
}

output "vpc_id" {
  value = data.aws_vpc.existing_vpc.id
}
