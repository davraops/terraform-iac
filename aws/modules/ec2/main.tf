resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = element(var.public_subnet_ids, 0)
  tags          = merge(var.tags, { Name = "${var.instance_name}" })

  # Associate a public IP address with the instance
  associate_public_ip_address = true

  # Security group to allow SSH access
  vpc_security_group_ids = [aws_security_group.main.id]
}

resource "aws_security_group" "main" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags, { Name = "${var.instance_name}-sg" })

  ingress {
    from_port   = 22
    to_port     = 22
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
