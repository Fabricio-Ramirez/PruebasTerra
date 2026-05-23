
variable "subnet_cidr" {
  description = "The CIDR block for the new subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_2" {
  description = "The CIDR block for the second new subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_2" {
  description = "The availability zone for the second new subnet."
  type        = string
  default     = "us-east-1b"
}
