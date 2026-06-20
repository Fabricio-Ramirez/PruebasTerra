variable "security_group_name" {
  description = "Nombre del security group"
  type        = string
  default     = "workers-sg"
}

variable "description" {
  description = "Descripción del security group"
  type        = string
  default     = "Security group para workers del ASG"
}

variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks permitidos para HTTP/HTTPS"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks permitidos para SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Tags para todos los recursos"
  type        = map(string)
  default     = {}
}
