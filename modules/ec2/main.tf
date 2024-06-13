resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = var.instance_name
  }

  depends_on = [var.security_groups, var.subnet_id]
}
