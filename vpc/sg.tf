resource "aws_security_group" "webssg" {
  name        = var.security_group
  description = "provide the sg name"
  vpc_id      = aws_vpc.main.id
  dynamic "ingress" {
    for_each = var.port_number
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

