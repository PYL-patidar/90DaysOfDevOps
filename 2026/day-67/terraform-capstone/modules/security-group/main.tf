resource "aws_security_group" "my_sg" {
  
  description = "Allow http and ssh inbound traffic and all outbound traffic"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_ports

    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Environment = var.environment
    Project = var.project_name
    Name        = "${var.project_name}-${var.environment}-SG"
  }
}