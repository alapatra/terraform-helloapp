resource "aws_security_group" "default" {
  name        = "terraform-springboot-helloapp"
  description = "Allow traffic"
  vpc_id      = "vpc-925066e8"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}