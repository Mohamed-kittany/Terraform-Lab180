output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "ec2_bastion_instance_id" {
  value = module.bastion.instance_id
}

output "ec2_bastion_public_ip" {
  value = module.bastion.public_ip
}

output "ec2_private_instance_id" {
  value = module.private_instance.instance_id
}

output "ec2_private_instance_private_ip" {
  value = module.private_instance.private_ip
}