// Web Security Group
resource "aws_security_group" "web-sg" {
  name        = "Web-SG"
  description = "Allow HTTP inbound traffic"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description = "HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  //Access_RULE
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "TCP"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Web-SG"
  }
}

// Application Security Group
resource "aws_security_group" "app-sg" {
  name        = "App-SG"
  description = "Allow traffic from ALB"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description     = "Allow traffic from web servers"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.web-sg.id]
  }

  //Access_RULE
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "TCP"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "App-SG"
  }
}

// Database Security Group
resource "aws_security_group" "db-sg" {
  name        = "Database-SG"
  description = "Allow traffic from app servers"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description     = "Allow traffic from application servers"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.app-sg.id]
  }

  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Database-SG"
  }
}
