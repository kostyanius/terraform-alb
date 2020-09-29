# Application load balancer
resource "aws_lb" "test" {
  name                       = "test-lb-tf"
  internal                   = false
  load_balancer_type         = "application"
  subnets                    = [aws_subnet.public.id, aws_subnet.public2.id]
  depends_on                 = [aws_internet_gateway.igw]
  enable_deletion_protection = false
  security_groups            = [aws_security_group.lb_sg.id]
  tags = {
    Environment = "test"
  }

}
