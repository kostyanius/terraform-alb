resource "aws_eip" "lb" {
  tags = {
    "Name" = "load balancer elastic ip"
  }
}

