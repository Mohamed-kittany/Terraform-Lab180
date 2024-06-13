aws_region        = "us-west-2"
availability_zone = "us-west-2a"

vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.0.0/24"
private_subnet_cidr = "10.0.2.0/23"
public_sg_name      = "public-sg"
private_sg_name     = "private-sg"

ami           = "ami-0b20a6f09484773af" # Amazon Linux 2023 AMI
instance_type = "t2.micro"
key_name      = "my-key-pair"