resource "aws_security_group" "main_security_group" {
  name   = var.security_group_name
  vpc_id = var.vpc_id

  tags = {
    Name        = var.name
    Environment = var.environment
    terraform   = "true"
  }

  ingress {
    from_port       = var.from_port
    to_port         = var.to_port
    protocol        = var.protocol
    cidr_blocks     = var.allowed_cidr_blocks
    security_groups = var.allowed_security_groups
    self            = var.self
  }
  # Allow ICMP Echo Request and Echo Reply (ping) - http://shouldiblockicmp.com/
  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
