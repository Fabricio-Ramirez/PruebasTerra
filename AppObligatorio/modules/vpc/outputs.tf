
output "subnet_ids" {
  value = [aws_subnet.new_subnet.id, aws_subnet.new_subnet_2.id]
}

output "vpc_id" {
  value = data.aws_vpc.existing_vpc.id
}
