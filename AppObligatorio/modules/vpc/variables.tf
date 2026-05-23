
variable "vpc_name" {
  description = "The name of the existing VPC."
  type        = string
  default     = "VPC_OBG"
}

variable "subnet_cidr" {
  description = "The CIDR block for the new subnet."
  type        = string
}

variable "subnet_cidr_2" {
  description = "The CIDR block for the second new subnet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the first new subnet."
  type        = string
}


variable "availability_zone_2" {
  description = "The availability zone for the second new subnet."
  type        = string
}
