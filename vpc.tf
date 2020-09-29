# Main VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}

# Pubic Subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone="us-east-1a"
  tags = {
    Name = "public"
  }
}

# Private subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone="us-east-1a" 
  tags = {
    Name = "private"
  }
}

# Pubic Subnet 2
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone="us-east-1b" 
  tags = {
    Name = "public"
  }
}

# Private subnet2
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"
  availability_zone="us-east-1b"
  tags = {
    Name = "private"
  }
}
