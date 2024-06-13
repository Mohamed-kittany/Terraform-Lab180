variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to use"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_sg_name" {
  description = "Name of the public security group"
  type        = string
  default     = "public-sg"
}

variable "private_sg_name" {
  description = "Name of the private security group"
  type        = string
  default     = "private-sg"
}