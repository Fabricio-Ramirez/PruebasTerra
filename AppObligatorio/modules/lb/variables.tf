
variable "subnet_id" {
  description = "The ID of the subnet for the load balancer."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC for the load balancer."
  type        = string
}

variable "asg_name" {
  description = "The name of the Auto Scaling Group."
  type        = string
}
