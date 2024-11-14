resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  security_group_ids = [var.security_group_id]

  tags = {
    Name = "${var.env}-app-instance"
  }
}
