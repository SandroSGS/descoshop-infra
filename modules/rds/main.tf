resource "aws_db_instance" "this" {
  allocated_storage      = var.allocated_storage
  engine                 = "postgres"
  engine_version         = "14"
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids

  skip_final_snapshot = true
}
