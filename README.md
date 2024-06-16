# Terraform Lab 180 Setup

This repository contains Terraform configuration files to set up a simple AWS infrastructure with the following components:

- One VPC
- One Availability Zone
- One Public Subnet with an EC2 bastion server and NAT Gateway
- One Private Subnet with a private EC2 instance
- One Internet Gateway
- Appropriate security groups to allow SSH access

## Architecture

The architecture is designed to allow the private EC2 instance to connect to the internet through the NAT Gateway, while the bastion host in the public subnet can be accessed directly from the internet for management purposes.

<img width="730" alt="architecture" src="https://github.com/Mohamed-kittany/Terraform-Setup-Lab-180/assets/161580792/6fabe2b9-5122-447d-9d20-4bf9bc6c02ad">

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine
- An AWS account with programmatic access configured (Access Key ID and Secret Access Key)
- AWS CLI installed and configured with your credentials

## Getting Started

1. **Clone the repository:**

   ```sh
   git clone https://github.com/Mohamed-kittany/Terraform-Setup-Lab-180.git
   cd Terraform-Setup-Lab-180
   ```

2. **Create a key pair:**

   If you don't have an existing key pair, create one using the AWS CLI:

   ```sh
   aws ec2 create-key-pair --key-name my-key-pair --query 'KeyMaterial' --output text > my-key-pair.pem
   chmod 400 my-key-pair.pem
   ```

3. **Update `terraform.tfvars` file:**

   Open `terraform.tfvars` and update the values as needed, particularly the `key_name` to match your key pair:

   ```hcl
   aws_region          = "us-east-1"
   vpc_cidr            = "10.0.0.0/16"
   public_subnet_cidr  = "10.0.0.0/24"
   private_subnet_cidr = "10.0.2.0/23"
   availability_zone   = "us-east-1a"
   ami                 = "ami-0c55b159cbfafe1f0"
   instance_type       = "t2.micro"
   key_name            = "my-key-pair"
   public_sg_name      = "public-sg"
   private_sg_name     = "private-sg"
   ```

4. **Initialize Terraform:**

   Initialize the Terraform working directory:

   ```sh
   terraform init
   ```

5. **Plan the infrastructure:**

   Review the plan to ensure it matches your expectations:

   ```sh
   terraform plan
   ```

6. **Apply the configuration:**

   Apply the configuration to create the infrastructure:

   ```sh
   terraform apply
   ```

   Confirm the apply with `yes`.

## Outputs

After applying the configuration, Terraform will output the following information:

- `public_subnet_id`: The ID of the public subnet
- `private_subnet_id`: The ID of the private subnet
- `ec2_bastion_instance_id`: The instance ID of the bastion host
- `ec2_bastion_public_ip`: The public IP address of the bastion host
- `ec2_private_instance_id`: The instance ID of the private EC2 instance
- `ec2_private_instance_private_ip`: The private IP address of the private EC2 instance

## Cleaning Up

To destroy the infrastructure and avoid ongoing costs, run:

```sh
terraform destroy
```

Confirm the destroy with `yes`.

