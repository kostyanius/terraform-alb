#Internet Gateway for EC2 instance
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}
