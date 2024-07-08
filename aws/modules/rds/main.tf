resource "aws_db_subnet_group" "main" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.private_subnet_ids
  tags       = merge(var.tags, { Name = "${var.db_name}-subnet-group" })
}

resource "aws_db_instance" "main" {
  identifier              = var.db_name
  allocated_storage       = var.allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.db_instance_class
  db_name                    = var.db_name
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = [aws_security_group.main.id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  tags                    = merge(var.tags, { Name = "${var.db_name}" })
}

resource "aws_security_group" "main" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags, { Name = "${var.db_name}-sg" })

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
