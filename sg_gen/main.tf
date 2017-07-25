resource "aws_security_group" "main_security_group" {
  name   = "${var.security_group_name}"
  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.name}"
    Environment = "${var.environment}"
    terraform   = "true"
  }

  ingress {
    from_port       = "${var.port}"
    to_port         = "${var.port}"
    protocol        = "${var.protocol}"
    cidr_blocks     = ["${var.allowed_cidr_blocks}"]
    security_groups = ["${var.allowed_security_groups}"]
    self            = "${var.self}"
  }
}
