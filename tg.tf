#Target group for the Test load balabcer
resource "aws_lb_target_group" "test" {
  name     = "tf-test-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}
