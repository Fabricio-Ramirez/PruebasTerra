
variable "subnet_ids" {
  description = "The IDs of the subnets for the load balancer."
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC for the load balancer."
  type        = string
}

variable "asg_name" {
  description = "The name of the Auto Scaling Group."
  type        = string
}
