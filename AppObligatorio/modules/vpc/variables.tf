
variable "vpc_name" {
  description = "The name of the existing VPC."
  type        = string
  default     = "VPC_OBG"
}

variable "subnet_cidr" {
  description = "The CIDR block for the new subnet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the new subnet."
  type        = string
}
