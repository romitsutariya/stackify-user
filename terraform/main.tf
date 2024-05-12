terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "dummy"
  secret_key = "dummy"
}

resource "aws_security_group" "example" {
  name_prefix = "example-"
  ingress {
    from_port   = 0
    to_port     = 5679
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "example" {
  engine                 = "postgres"
  db_name                = "postgres"
  identifier             = "walter"
  instance_class         = "db.t3.micro"
  engine_version         = "14.9"
  allocated_storage      = 20
  publicly_accessible    = true
  username               = var.db-username
  password               = var.db-password
  vpc_security_group_ids = [aws_security_group.example.id]
  skip_final_snapshot    = true

  tags = {
    Name = "example-db"
  }
}

output "Database_URL" {
  value = aws_db_instance.example.endpoint
}

output "Database_PORT" {
  value = aws_db_instance.example.port
}

output "Database_USER" {
  value = aws_db_instance.example.username
}

output "Database_Name" {
  value = aws_db_instance.example.db_name
}