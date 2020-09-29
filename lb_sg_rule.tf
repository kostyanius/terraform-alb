# Bind ec2 and app lb security groups
resource "aws_security_group_rule" "opened_to_alb" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-ec2.id
  security_group_id        = aws_security_group.lb_sg.id
}
