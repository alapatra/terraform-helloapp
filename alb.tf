resource "aws_lb" "default" {
  name               = "terraform-springboot-helloapp"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.default _lb.id}"]
  subnets            = ["subnet-9b6988ba", "subnet-6641eb2b"]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}