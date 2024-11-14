resource "aws_db_instance" "default" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = var.db_instance_type
  db_name = var.db_name
  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
  multi_az = false
  publicly_accessible = false
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "${var.env}-db-instance"
  }
}
