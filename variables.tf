variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to use"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
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

variable "ami" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}
