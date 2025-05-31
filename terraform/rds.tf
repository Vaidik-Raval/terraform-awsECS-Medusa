resource "aws_db_instance" "medusa_db" {
  identifier        = "medusadb"
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "15.2"
  instance_class    = "db.t3.micro"
  name              = "medusa"
  username          = var.db_username
  password          = var.db_password
  publicly_accessible = false
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.default.name
}
