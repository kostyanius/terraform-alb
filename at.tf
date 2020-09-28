# Attachment for the target group and ec2 instance
resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.ec2-0.id
  port             = 80
}
