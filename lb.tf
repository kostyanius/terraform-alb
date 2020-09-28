# Network load balancer
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "network"
#  subnets            = [aws_subnet.public.id]
  depends_on = [aws_internet_gateway.igw]
  enable_deletion_protection = false

  tags = {
    Environment = "test"
  }


 # Mapping for elastic ip and load balancer
 subnet_mapping {
    subnet_id     = aws_subnet.public.id
    allocation_id = aws_eip.lb.id
  }
}
