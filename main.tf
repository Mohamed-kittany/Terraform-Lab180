module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zone    = var.availability_zone
  public_sg_name       = var.public_sg_name
  private_sg_name      = var.private_sg_name
}

module "bastion" {
  source         = "./modules/ec2"
  instance_name  = "bastion"
  subnet_id      = module.vpc.public_subnet_id
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  security_groups = [module.vpc.public_sg_id]
}

module "private_instance" {
  source         = "./modules/ec2"
  instance_name  = "private_instance"
  subnet_id      = module.vpc.private_subnet_id
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  security_groups = [module.vpc.private_sg_id]
}

