
variable "ami_id" {
  description = "The AMI ID for the EC2 instances."
  type        = string
  default     = "ami-0c5204531f799e0c6" # Amazon Linux 2 AMI for us-east-1
}

variable "instance_type" {
  description = "The instance type for the EC2 instances."
  type        = string
  default     = "t2.micro"
}

variable "iam_instance_profile" {
  description = "The IAM instance profile for the EC2 instances."
  type        = string
  default     = "LabInstanceProfile"
}

variable "desired_capacity" {
  description = "The desired number of EC2 instances."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of EC2 instances."
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum number of EC2 instances."
  type        = number
  default     = 1
}

variable "subnet_ids" {
  description = "The IDs of the subnets for the EC2 instances."
  type        = list(string)
}
