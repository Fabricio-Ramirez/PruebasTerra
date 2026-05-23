
variable "subnet_cidr" {
  description = "The CIDR block for the new subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the new subnet."
  type        = string
  default     = "us-east-1a"
}
